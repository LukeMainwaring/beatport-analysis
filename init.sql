CREATE TABLE IF NOT EXISTS song_details (
    id varchar(36) NOT NULL DEFAULT (uuid()),
    song_rank int NOT NULL,
    release_date varchar(36),
    bpm varchar(10) NOT NULL,
    song_key varchar(10) NOT NULL,
    genre varchar(60) NOT NULL,
    label varchar(60),
    capture_date varchar(36),
    track_id varchar(36)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;