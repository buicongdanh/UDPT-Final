<?php

class HomeController extends Controller
{

    //private $model_Auth;
    private $model_Genre, $model_Album, $model_Artist, $model_Song;


    public function __construct()
    {
        //parent::__construct();
        $this->model_Genre = $this->model('GenreModel');
        $this->model_Album = $this->model('AlbumModel');
        $this->model_Artist = $this->model('ArtistModel');
        $this->model_Song = $this->model('SongModel');
    }

    public function index()
    {
        unset($results);
        unset($addSong);
        $genres = $this->model_Genre->getAllGenres();
        $albums = $this->model_Album->getTop20LatestAlbum();
        $artists = $this->model_Artist->getTop20ArtistsBySongs();

        $this->view('layout', [
            'genres' => $genres,
            'albums' => $albums,
            'artists' => $artists
        ]);

    }

    public function search()
    {
        if (isset($_GET['keyword'])) {
            $keyword = $_GET['keyword'];
            $searchTypes = (isset($_GET['searchType']) && is_array($_GET['searchType'])) ? $_GET['searchType'] : [];
            $limit = (count($searchTypes) == 1) ? false : true;

            $results = [
                'singer' => [],
                'album' => [],
                'song' => []
            ];

            if (in_array('singer', $searchTypes)) {
                $results['singer'] = $this->model_Artist->searchArtists($keyword, $limit);
            }
            if (in_array('album', $searchTypes)) {
                $results['album'] = $this->model_Album->searchAlbums($keyword, $limit);
            }
            if (in_array('song', $searchTypes)) {
                $results['song'] = $this->model_Song->searchSongs($keyword, $limit);
            }

            $genres = $this->model_Genre->getAllGenres();
            $albums = $this->model_Album->getTop20LatestAlbum();
            $artists = $this->model_Artist->getTop20ArtistsBySongs();

            $this->view('layout', [
                'genres' => $genres,
                'albums' => $albums,
                'artists' => $artists,
                'results' => $results
            ]);
        } else {
            echo '<script>
                    window.location.href = "/19127348_BuiCongDanh/home";
                </script>';
            exit();
        }
    }



    public function themAlbumMoi()
    {
        $this->view('/page/empty');
    }

    public function addnewsong()
    {
        unset($results);

        $genres = $this->model_Genre->getAllGenres();
        $albums = $this->model_Album->getTop20LatestAlbum();
        $artists = $this->model_Artist->getTop20ArtistsBySongs();

        if (isset($_SESSION['user'])) {
            $this->view('layout', [
                'genres' => $genres,
                'albums' => $albums,
                'artists' => $artists,
                'addSong' => True
            ]);
        } else {
            echo '<script>
                    alert("Please login before you can add a new song");
                    window.location.href = "/19127348_BuiCongDanh/home";
                </script>';
            exit();

        }
    }

    public function addSong()
    {
        $data = [
            'titleName' => '',
            'releaseDate' => '',
            'artistName' => '',
            'length' => '',
            'audioUpload' => '',
            'error' => ''
        ];

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $data['titleName'] = $_POST['titleName'];
            $data['releaseDate'] = $_POST['releaseDate'];
            $data['artistName'] = $_POST['artistName'];
            $data['length'] = $_POST['length'];

            $dateTimeObj = new DateTime($data['releaseDate']);
            $data['releaseDate'] = $dateTimeObj->format('Y-m-d H:i:s');


            $uploadDir = ROOT_PATH .'/uploads/';
            $path = $uploadDir . basename($_FILES['audioUpload']['name']);

            $result = $this->model_Song->addSong(
                $data['titleName'],
                $data['releaseDate'],
                $data['artistName'],
                $data['length'],
                $path
            );

            if ($result === true) {
                echo '<script>
                        alert("Successfully add a new song");
                        window.location.href = "/19127348_BuiCongDanh/home";
                    </script>';
                exit();
            } else {
                echo '<script>
                        alert("Error adding a new song");
                    </script>';
                exit();
            }
        }
    }
}