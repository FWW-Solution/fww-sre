INSERT INTO users (
        full_name,
        username,
        email,
        password,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        'John Doe',
        'johndoe',
        'johndoe@example.com',
        'password123',
        NOW(),
        NULL,
        NULL
    ),
    (
        'Jane Doe',
        'janedoe',
        'christian.mahardhika@gmail.com',
        'password456',
        NOW(),
        NULL,
        NULL
    ),
    (
        'Bob Smith',
        'bobsmith',
        'bobsmith@example.com',
        'password789',
        NOW(),
        NULL,
        NULL
    ),
    (
        'Alice Johnson',
        'alicejohnson',
        'alicejohnson@example.com',
        'passwordabc',
        NOW(),
        NULL,
        NULL
    ),
    (
        'Mike Brown',
        'mikebrown',
        'mikebrown@example.com',
        'passworddef',
        NOW(),
        NULL,
        NULL
    );
INSERT INTO passengers (
        full_name,
        gender,
        date_of_birth,
        id_number,
        id_type,
        covid_vaccine_status,
        is_id_verified,
        case_id,
        created_at,
        updated_at,
        deleted_at
    )
VALUES (
        'John Doe',
        'Male',
        '1990-01-01',
        '1234567890123456',
        'National ID',
        'Vaccine I',
        true,
        0,
        NOW(),
        NOW(),
        NULL
    ),
    (
        'Jane Doe',
        'Female',
        '1995-05-05',
        '2345678901234567',
        'Passport',
        'Vaccine II',
        true,
        0,
        NOW(),
        NOW(),
        NULL
    ),
    (
        'Bob Smith',
        'Male',
        '1985-12-25',
        '3456789012345678',
        'National ID',
        'Not Vaccinated',
        false,
        0,
        NOW(),
        NOW(),
        NULL
    ),
    (
        'Alice Johnson',
        'Female',
        '2000-06-15',
        '4567890123456789',
        'Driver License',
        'Vaccine III',
        true,
        0,
        NOW(),
        NOW(),
        NULL
    ),
    (
        'Tom Wilson',
        'Male',
        '1978-09-30',
        '5678901234567890',
        'National ID',
        'Not Vaccinated',
        false,
        0,
        NOW(),
        NOW(),
        NULL
    );
-- Generate 10 dummy records
INSERT INTO plane_informations (
        code_plane,
        total_baggage_capacity,
        "type",
        variant,
        created_at
    )
VALUES ('PL001', 100, 'Airbus', 'A320', NOW()),
    ('PL002', 100, 'Airbus', 'A320', NOW()),
    ('PL003', 100, 'Airbus', 'A320', NOW()),
    ('PL004', 100, 'Airbus', 'A320', NOW()),
    ('PL005', 100, 'Airbus', 'A320', NOW()),
    ('PL006', 100, 'Airbus', 'A320', NOW()),
    ('PL007', 100, 'Airbus', 'A320', NOW()),
    ('PL008', 100, 'Airbus', 'A320', NOW()),
    ('PL009', 100, 'Airbus', 'A320', NOW()),
    ('PL010', 100, 'Airbus', 'A320', NOW());
INSERT INTO plane_information_details (
        class,
        total_seat_capacity,
        created_at,
        plane_id
    )
VALUES ('Economy', 172, NOW(), 1),
    ('Economy', 172, NOW(), 2),
    ('Economy', 172, NOW(), 3),
    ('Economy', 172, NOW(), 4),
    ('Economy', 172, NOW(), 5),
    ('Economy', 172, NOW(), 6),
    ('Economy', 172, NOW(), 7),
    ('Economy', 172, NOW(), 8),
    ('Economy', 172, NOW(), 9),
    ('Economy', 172, NOW(), 10);
INSERT INTO payment_methods (
        "name",
        is_active,
        created_at,
        updated_at,
        deleted_at
    )
VALUES ('Credit Card', true, NOW(), null, null),
    ('PayPal', true, NOW(), null, null),
    ('Bank Transfer', true, NOW(), null, null),
    ('Cash on Delivery', true, NOW(), null, null),
    ('Google Pay', true, NOW(), null, null);
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Aek Godang',
        'Padang Sidempuan',
        'Sumatera Utara',
        'WIME',
        'AEG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Alas Leuser',
        'Aceh Tenggara',
        'Aceh',
        NULL,
        'LSR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara A.H. Nasution
(Bandar Udara Bukit Malintang)',
        'Mandailing Natal',
        'Sumatera Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bengkalis
(Bandar Udara Meranti)
(Bandar Udara Sei Selari)
(Bandar Udara Sei Pakning)',
        'Bengkalis',
        'Riau',
        'WIBS',
        'SEQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Binaka',
        'Gunung Sitoli',
        'Sumatera Utara',
        'WIMB',
        'GNS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bintan Baru',
        'Bintan',
        'Kepulauan Riau',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bireuen',
        'Bireuen',
        'Aceh',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Blangkejeren
(Bandar Udara Gayo Lues)
(Bandar Udara Senubung)',
        'Gayo Lues',
        'Aceh',
        NULL,
        'GYO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Cut Nyak Dhien',
        'Suka Makmue',
        'Aceh',
        'WITC',
        'MEQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Dabo',
        'Lingga',
        'Kepulauan Riau',
        'WIDS',
        'SIQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Danau Toba',
        'Danau Toba',
        'Sumatera Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Depati Amir',
        'Pangkal Pinang',
        'Kepulauan Bangka Belitung',
        'WIPK',
        'PGK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Depati Parbo',
        'Kerinci',
        'Jambi',
        'WIJI',
        'KRC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Enggano',
        'Pulau Enggano, Bengkulu Utara',
        'Bengkulu',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Fatmawati Soekarno',
        'Bengkulu',
        'Bengkulu',
        'WIGG',
        'BKS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ferdinand Lumban Tobing
(Bandar Udara Pinangsori)',
        'Sibolga',
        'Sumatera Utara',
        'WIMS',
        'FLZ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara H.A.S. Hanandjoeddin
d.h. Bandar Udara Buluh Tumbang',
        'Tanjung Pandan',
        'Kepulauan Bangka Belitung',
        'WIKT',
        'TJQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Hang Nadim',
        'Batam',
        'Kepulauan Riau',
        'WIDD',
        'BTH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Kualanamu',
        'Deli Serdang',
        'Sumatera Utara',
        'WIMM',
        'KNO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Minangkabau',
        'Padang Pariaman',
        'Sumatera Barat',
        'WIEE',
        'PDG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Sultan Iskandar Muda',
        'Banda Aceh',
        'Aceh',
        'WITT',
        'BTJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Japura
(Bandar Udara Japura Rengat)',
        'Kabupaten Indragiri Hulu',
        'Riau',
        'WIPR',
        'RGT'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kuala Batee',
        'Blangpidie, Aceh Barat Daya',
        'Aceh',
        NULL,
        'KJX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lasikin',
        'Sinabang',
        'Aceh',
        'WIML',
        'SNX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lasondre',
        'Tanahmasa, Nias Selatan',
        'Sumatera Utara',
        'WIMO',
        'LSE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Letung',
        'Letung, Jemaja, Kepulauan Anambas',
        'Riau',
        NULL,
        'LMU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Maimun Saleh',
        'Sabang',
        'Aceh',
        'WIAB',
        'SBG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Malikus Saleh',
        'Muara Batu, Aceh Utara',
        'Aceh',
        'WITM',
        'LSW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Muara Bungo',
        'Bungo',
        'Jambi',
        'WIJB',
        'MRB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mukomuko',
        'Mukomuko',
        'Bengkulu',
        'WIGM',
        'MPC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pagar Alam',
        'Pagar Alam',
        'Sumatera Selatan',
        NULL,
        'PXA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pinang Kampai',
        'Dumai',
        'Riau',
        'WIBD',
        'DUM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pusako Anak Nagari
(Bandar Udara Pasaman Barat)',
        'Simpang Ampek, Pasaman Barat',
        'Sumatera Barat',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Radin Inten II',
        'Bandar Lampung',
        'Lampung',
        'WILL',
        'TKG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Raja Haji Abdullah',
        'Karimun',
        'Kepulauan Riau',
        'WIDT',
        'TJB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Raja Haji Fisabilillah',
        'Tanjung Pinang',
        'Kepulauan Riau',
        'WIDN',
        'TNJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ranai
d.h. Bandar Udara Raden Sadjad',
        'Ranai, Kepulauan Natuna',
        'Kepulauan Riau',
        'WION',
        'NTX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rembele',
        'Takengon',
        'Aceh',
        'WITK',
        'TXE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rokot',
        'Sipora',
        'Sumatera Barat',
        'WIBR',
        'RKI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sibisa',
        'Toba',
        'Sumatera Utara',
        'WIMP',
        'SIW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Silampari',
        'Lubuklinggau',
        'Sumatera Selatan',
        'WIPB',
        'LLG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Simalungun',
        'Pematangsiantar',
        'Sumatera Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sisingamangaraja XII
d.h. Bandar Udara Silangit',
        'Siborongborong',
        'Sumatera Utara',
        'WIMN',
        'DTB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Mahmud Badaruddin II',
        'Palembang',
        'Sumatera Selatan',
        'WIPP',
        'PLM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Syarif Kasim II',
        'Pekanbaru',
        'Riau',
        'WIBB',
        'PKU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Thaha',
        'Kota Jambi',
        'Jambi',
        'WIJJ',
        'DJB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Syekh Hamzah Fansyuri
(Bandar Udara Singkil)',
        'Aceh Singkil',
        'Aceh',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tambelan',
        'Bintan',
        'Kepulauan Riau',
        NULL,
        'TBX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Muhammad Taufiq Kiemas',
        'Lampung Barat',
        'Lampung',
        NULL,
        'TFY'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Teluk Dalam',
        'Asahan',
        'Sumatera Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tempuling',
        'Kabupaten Indragiri Hilir',
        'Riau',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Teuku Cut Ali',
        'Aceh Barat Daya',
        'Aceh',
        'WIMT',
        'TPK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tuanku Tambusai
(Bandar Udara Pasir Pangaraian)',
        'Rokan Hilir',
        'Riau',
        'WIBG',
        'PPR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Pangkalan Udara Bagansiapiapi',
        'Bagansiapiapi, Rokan Hilir',
        'Riau',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Pangkalan Udara Pangeran Mohammad Bunyamin',
        'Astra Ksetra, Tulang Bawang',
        'Lampung',
        '–',
        'AKQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Pangkalan Udara Soewondo
d.h. Bandar Udara Polonia',
        'Medan',
        'Sumatera Utara',
        'WIMK',
        'MES'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Pangkalan Udara Sutan Sjahrir
d.h. Bandar Udara Tabing',
        'Padang',
        'Sumatera Barat',
        'WIMG',
        'PDG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Abdulrachman Saleh',
        'Malang',
        'Jawa Timur',
        'WARA',
        'MLG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Adisucipto',
        'Sleman',
        'Daerah Istimewa Yogyakarta',
        'WAHH',
        'JOG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ahmad Yani',
        'Semarang',
        'Jawa Tengah',
        'WAHS',
        'SRG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Banyuwangi
d.h. Bandar Udara Blimbingsari',
        'Banyuwangi',
        'Jawa Timur',
        'WADY',
        'BWX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ngloram
(Bandar Udara Blora)',
        'Blora',
        'Jawa Tengah',
        'WARC',
        'CPF'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Budiarto',
        'Kabupaten Tangerang',
        'Banten',
        'WIRR',
        'BTO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Cakrabhuwana
(Bandar Udara Penggung)
d.h. Bandar Udara Astanajapura',
        'Cirebon',
        'Jawa Barat',
        'WICD',
        'CBN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Dewadaru',
        'Karimunjawa, Jepara',
        'Jawa Tengah',
        'WAHU',
        'KWB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Nusawiru',
        'Pangandaran',
        'Jawa Barat',
        'WICD',
        'CJN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Halim Perdanakusuma',
        'Jakarta',
        'DKI Jakarta',
        'WIHH',
        'HLP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Harun Thohir',
        'Bawean, Gresik',
        'Jawa Timur',
        NULL,
        'BXW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Husein Sastranegara',
        'Bandung',
        'Jawa Barat',
        'WICC',
        'BDO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Adisumarmo',
        'Boyolali',
        'Jawa Tengah',
        'WAHQ',
        'SOC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Juanda',
        'Sidoarjo',
        'Jawa Timur',
        'WARR',
        'SUB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Karawang',
        'Karawang',
        'Jawa Barat',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Kertajati',
        'Majalengka',
        'Jawa Barat',
        'WICA',
        'KJT'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Soekarno–Hatta',
        'Tangerang',
        'Banten',
        'WIII',
        'CGK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Yogyakarta',
        'Kulon Progo',
        'Daerah Istimewa Yogyakarta',
        'WAHI',
        'YIA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Jenderal Besar Sudirman
(Bandar Udara Wirasaba)',
        'Purbalingga',
        'Jawa Tengah',
        NULL,
        'PWL'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kemayoran
d.h. Bandar Udara Kemajoran',
        'Jakarta',
        'DKI Jakarta',
        'WIID',
        'JKT'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Notohadinegoro',
        'Jember',
        'Jawa Timur',
        'WARE',
        'JBB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pondok Cabe',
        'Tangerang Selatan',
        'Banten',
        'WIHP',
        'PCB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pulau Panjang',
        'Kepulauan Seribu',
        'Jakarta',
        'WIIG',
        'PPJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pulau Kangean',
        'Pulau Kangean, Sumenep',
        'Jawa Timur',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tanjung Lesung',
        'Pandeglang',
        'Banten',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Trunojoyo',
        'Sumenep',
        'Jawa Timur',
        'WART',
        'SUP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tunggul Wulung',
        'Cilacap',
        'Jawa Tengah',
        'WAHL',
        'CXP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wiriadinata',
        'Tasikmalaya',
        'Jawa Barat',
        'WICM',
        'TSY'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Pangkalan Udara Atang Senjaya',
        'Bogor',
        'Jawa Barat',
        'WIAJ',
        'ATS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Gading',
        'Gunungkidul',
        'DI Yogyakarta',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bersujud
(Bandar Udara Batulicin)',
        'Tanah Bumbu',
        'Kalimantan Selatan',
        'WRBC',
        'BTW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Beringin',
        'Barito Utara',
        'Kalimantan Tengah',
        'WAOM',
        'MTW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Binuang',
        'Nunukan',
        'Kalimantan Utara',
        'WAQG',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Datah Dawai',
        'Mahakam Ulu',
        'Kalimantan Timur',
        'WALJ',
        'DTD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Gusti Sjamsir Alam
(Bandar Udara Stagen)',
        'Kotabaru',
        'Kalimantan Selatan',
        'WAOK',
        'KBU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara H. Asan',
        'Sampit',
        'Kalimantan Tengah',
        'WAGS',
        'SMQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Haji Muhammad Sidik',
        'Trinsing',
        'Kalimantan Tengah',
        'WAGB',
        'HMS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional APT Pranoto
(Bandar Udara Samarinda Baru)',
        'Samarinda',
        'Kalimantan Timur',
        'WALS',
        'AAP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Iskandar',
        'Pangkalanbun',
        'Kalimantan Tengah',
        'WAGI',
        'PKN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Juwata',
        'Tarakan',
        'Kalimantan Utara',
        'WAQQ',
        'TRK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kalimarau',
        'Berau',
        'Kalimantan Timur',
        'WAQT',
        'BEJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kota Bangun',
        'Kota Bangun, Kutai Kartanegara',
        'Kalimantan Timur',
        NULL,
        'KOD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kuala Kurun',
        'Kuala Kurun, Gunung Mas',
        'Kalimantan Tengah',
        'WAGA',
        'KLK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kuala Pembuang',
        'Kuala Pembuang Satu, Seruyan',
        'Kalimantan Tengah',
        'WAGF',
        'KLP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara LNG Badak Bontang',
        'Bontang',
        'Kalimantan Timur',
        'WALC',
        'BXT'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Long Apari',
        'Long Apari, Mahakam Ulu',
        'Kalimantan Timur',
        'WAGL',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Long Apung',
        'Malinau',
        'Kalimantan Utara',
        'WAQL',
        'LPU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Long Layu',
        'Nunukan',
        'Kalimantan Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lumbis',
        'Nunukan',
        'Kalimantan Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Maratua',
        'Berau',
        'Kalimantan Timur',
        'WAQC',
        'RTU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Melalan',
        'Melak, Kutai Barat',
        'Kalimantan Timur',
        'WALE',
        'GHS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Muara Badak Pujangan',
        'Kutai Kartanegara',
        'Kalimantan Timur',
        'WALQ',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Muara Wahau',
        'Kutai Timur',
        'Kalimantan Timur',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Nanga Bulik',
        'Lamandau',
        'Kalimantan Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Nanga Pinoh',
        'Melawi',
        'Kalimantan Barat',
        'WIOG',
        'NPO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Nunukan',
        'Nunukan',
        'Kalimantan Utara',
        'WAQA',
        'NNX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pangsuma',
        'Putussibau',
        'Kalimantan Barat',
        'WIOP',
        'PSU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Paser
(Bandar Udara Tanah Grogot)',
        'Paser',
        'Kalimantan Timur',
        'WALH',
        'TNB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rahadi Oesman
(Bandar Udara Ketapang)',
        'Ketapang',
        'Kalimantan Barat',
        'WIOK',
        'KTG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Robert Atty Bessing',
        'Malinau',
        'Kalimantan Utara',
        'WALM',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sanggu',
        'Barito Selatan',
        'Kalimantan Tengah',
        'WAGM',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Aji Muhammad Sulaiman Sepinggan',
        'Balikpapan',
        'Kalimantan Timur',
        'WALL',
        'BPN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Singkawang',
        'Singkawang',
        'Kalimantan Barat',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Supadio',
        'Pontianak',
        'Kalimantan Barat',
        'WIOO',
        'PNK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Susilo
(Bandar Udara Sintang)',
        'Sintang',
        'Kalimantan Barat',
        'WIOS',
        'SQG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Syamsudin Noor',
        'Banjarbaru',
        'Kalimantan Selatan',
        'WAOO',
        'BDJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tanjung Bara',
        'Kutai Timur',
        'Kalimantan Timur',
        'WRLJ',
        'TJC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tanjung Harapan',
        'Tanjung Selor',
        'Kalimantan Utara',
        'WAQD',
        'TJS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tebelian',
        'Sintang',
        'Kalimantan Barat',
        'WIOS',
        'SQG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tira Tangka Balang',
        'Murung Raya',
        'Kalimantan Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tjilik Riwut',
        'Palangkaraya',
        'Kalimantan Tengah',
        'WAGG',
        'PKY'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tumbang Samba',
        'Katingan',
        'Kalimantan Tengah',
        'WAOW',
        'TMB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Warukin Tanjung',
        'Tabalong',
        'Kalimantan Selatan',
        'WAON',
        'TJG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Yuvai Semaring',
        'Long Bawan, Nunukan',
        'Kalimantan Utara',
        'WAQJ',
        'LBW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Andi Jemma',
        'Masamba',
        'Sulawesi Selatan',
        'WAWM',
        'MXB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Arung Palakka',
        'Bone',
        'Sulawesi Selatan',
        'WAWN',
        'BNE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Banggai Laut',
        'Banggai Laut',
        'Sulawesi Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Betoambari',
        'Bau-Bau',
        'Sulawesi Tenggara',
        'WAWB',
        'BUW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bolaang
(Bandar Udara Loloda Mokoagow)',
        'Bolaang Mongondow',
        'Sulawesi Utara',
        '–',
        'BJG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bua
(Bandar Udara Lagaligo)',
        'Luwu',
        'Sulawesi Selatan',
        'WAFD',
        'LLO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Djalaluddin',
        'Kota Gorontalo',
        'Gorontalo',
        'WAMG',
        'GTO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara H. Aroeppala',
        'Kepulauan Selayar',
        'Sulawesi Selatan',
        'WAWH',
        'KSR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Haluoleo
(Bandar Udara Wolter Monginsidi)',
        'Kendari',
        'Sulawesi Tenggara',
        'WAWW',
        'KDI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Sam Ratulangi',
        'Manado',
        'Sulawesi Utara',
        'WAMM',
        'MDC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Sultan Hasanuddin',
        'Maros',
        'Sulawesi Selatan',
        'WAAA',
        'UPG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kasiguncu',
        'Poso',
        'Sulawesi Tengah',
        'WAMP',
        'PSJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lantagi
(Bandar Udara Buton Utara)',
        'Buton Utara',
        'Sulawesi Tenggara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Matahora',
        'Wakatobi',
        'Sulawesi Tenggara',
        'WAWD',
        'WNI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Morowali
d.h. Bandar Udara Maleo',
        'Morowali',
        'Sulawesi Tengah',
        NULL,
        'MOH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Melonguane',
        'Melonguane',
        'Sulawesi Utara',
        'WAMN',
        'MNA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Miangas',
        'Kepulauan Talaud',
        'Sulawesi Utara',
        'WAMS',
        'MKF'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mutiara SIS Al-Jufrie
d.h. Bandar Udara Masovu',
        'Palu',
        'Sulawesi Tengah',
        'WAFF',
        'PLW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Naha',
        'Pulau Sangihe',
        'Sulawesi Utara',
        'WAMH',
        'NAH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pogogul Buol',
        'Buol',
        'Sulawesi Tengah',
        'WAFY',
        'UOL'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pohuwato',
        'Pohuwato',
        'Gorontalo',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pongtiku',
        'Tana Toraja',
        'Sulawesi Selatan',
        'WAFT',
        'TTR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rampi',
        'Luwu Utara',
        'Sulawesi Selatan',
        'WAFK',
        'RPI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sangia Nibandera',
        'Kolaka',
        'Sulawesi Tenggara',
        NULL,
        'PUM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Seko',
        'Luwu Utara',
        'Sulawesi Selatan',
        'WAFN',
        'SKO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sugimanuru',
        'Muna',
        'Sulawesi Tenggara',
        'WAWR',
        'RAQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Bantilan',
        'Tolitoli',
        'Sulawesi Tengah',
        'WAMI',
        'TLI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sumarorong',
        'Mamasa',
        'Sulawesi Barat',
        'WAFS',
        'MSA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Syukuran Aminuddin Amir',
        'Banggai',
        'Sulawesi Tengah',
        'WAMW',
        'LUW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Taman Bung Karno
d.h. Bandar Udara Siau',
        'Kepulauan Sitaro',
        'Sulawesi Utara',
        'WAMO',
        'BRG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tampa Padang',
        'Mamuju',
        'Sulawesi Barat',
        'WAAJ',
        'MJU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tanjung Api',
        'Tojo Una-Una',
        'Sulawesi Tengah',
        'WAFU',
        'OJU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Toraja',
        'Tana Toraja',
        'Sulawesi Selatan',
        NULL,
        'TRT'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara A.A. Bere Tallo',
        'Atambua',
        'Nusa Tenggara Timur',
        'WATA',
        'ABU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bali Baru',
        'Jembrana',
        'Bali',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara D. C. Saundale
d.h. Bandar Udara Lekunik',
        'Rote Ndao',
        'Nusa Tenggara Timur',
        'WATR',
        'RTI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara El Tari',
        'Kupang',
        'Nusa Tenggara Timur',
        'WATT',
        'KOE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Frans Seda
(Bandar Udara Wai Oti)
(Bandar Udara Maumere)',
        'Maumere',
        'Nusa Tenggara Timur',
        'WATC',
        'MOF'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Frans Sales Lega',
        'Kabupaten Manggarai',
        'Nusa Tenggara Timur',
        'WRTG',
        'RTG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Gewayantana
d.h. Bandar Udara Larantuka',
        'Flores Timur',
        'Nusa Tenggara Timur',
        'WATL',
        'LKA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara H. Hasan Aroeboesman
(Bandar Udara Ende)
(Bandar Udara Ippi)',
        'Ende',
        'Nusa Tenggara Timur',
        'WATE',
        'ENE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional I Gusti Ngurah Rai',
        'Denpasar',
        'Bali',
        'WADD',
        'DPS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Internasional Lombok',
        'Mataram',
        'Nusa Tenggara Barat',
        'WADL',
        'LOP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Komodo',
        'Labuan Bajo, Manggarai Barat',
        'Nusa Tenggara Timur',
        'WATO',
        'LBJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lunyuk',
        'Sumbawa',
        'Nusa Tenggara Barat',
        'WADU',
        'LYK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mali',
        'Alor',
        'Nusa Tenggara Timur',
        'WRKM',
        'ARD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mbay Surabaya II',
        'Nagekeo',
        'Nusa Tenggara Timur',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pantar
(Bandar Udara Kabir)',
        'Pulau Pantar, Alor',
        'Nusa Tenggara Timur',
        NULL,
        'AXO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Umbu Mehang Kunda
d.h. Bandar Udara Mau Hau',
        'Waingapu, Sumba Timur',
        'Nusa Tenggara Timur',
        'WATU',
        'WGP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sekongkang',
        'Sumbawa Barat',
        'Nusa Tenggara Barat',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Selaparang',
        'Mataram',
        'Nusa Tenggara Barat',
        'WADA',
        'AMI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Muhammad Kaharuddin III
d.h. Bandar Udara Brangbiji',
        'Sumbawa',
        'Nusa Tenggara Barat',
        'WADS',
        'SWQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Muhammad Salahudin
(Bandar Udara Bima)',
        'Bima',
        'Nusa Tenggara Barat',
        'WADB',
        'BMU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Soa Bajawa
(Bandar Udara Turelelo)',
        'Ngada',
        'Nusa Tenggara Timur',
        'WATB',
        'BJW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tambolaka
(Bandar Udara Waikabubak)',
        'Waikabubak',
        'Nusa Tenggara Timur',
        'WATK',
        'TMC'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tardamu',
        'Pulau Sawu, Sabu Raijua',
        'Nusa Tenggara Timur',
        'WATS',
        'SAU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wunopito
(Bandar Udara Lewoleba)',
        'Lembata',
        'Nusa Tenggara Timur',
        'WATW',
        'LWE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Amahai',
        'Amahai',
        'Maluku',
        'WAPA',
        'AHI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bandanaira
(Bandar Udara Banda)',
        'Banda',
        'Maluku',
        'WAPC',
        'NDA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Benjina',
        'Benjina',
        'Maluku',
        'WAPK',
        'BJK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Buli',
        'Buli',
        'Maluku Utara',
        'WAEM',
        'WUB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bobong',
        'Pulau Taliabu',
        'Maluku Utara',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rar Gwamar
(Bandar Udara Dobo)',
        'Dobo',
        'Maluku',
        'WAPD',
        'DOB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Dofa Benjani Falabisahaya
(Bandar Udara Mangole)',
        'Pulau Mangole,Kepulauan Sula',
        'Maluku Utara',
        NULL,
        'MAL'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Dumatubun',
        'Tual',
        'Maluku',
        'WAPL',
        'LUV'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Emalamo',
        'Sanana, Kepulauan Sula',
        'Maluku Utara',
        'WAPN',
        'SQN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Gamarmalamo',
        'Galela',
        'Maluku Utara',
        'WAEG',
        'GLX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Gebe',
        'Pulau Gebe, Halmahera Tengah',
        'Maluku Utara',
        'WAMJ',
        'GEB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara John Becker',
        'Pulau Kisar, Maluku Barat Daya',
        'Maluku',
        'WATQ',
        'KSX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Jos Orno Imsula',
        'Pulau Moa, Maluku Barat Daya',
        'Maluku',
        NULL,
        'JIO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Karel Sadsuitubun',
        'Langgur',
        'Maluku',
        'WAPF',
        'LUV'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kuabang',
        'Kao',
        'Maluku',
        'WAEK',
        'KAZ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mathilda Batlayeri',
        'Saumlaki, Kep. Tanimbar',
        'Maluku',
        'WAPS',
        'SXK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Moa',
        'Pulau Moa, Maluku Barat Daya',
        'Maluku',
        NULL,
        'MOA'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Namlea',
        'Namlea',
        'Maluku',
        'WAPR',
        'NAM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Namniwel',
        'Namlea',
        'Maluku',
        'WAPR',
        'NAM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Namrole',
        'Namrole',
        'Maluku',
        'WAPG',
        'NRE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Oesman Sadik',
        'Pulau Bacan, Halmahera Selatan',
        'Maluku Utara',
        'WAEL',
        'LAH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pattimura',
        'Ambon',
        'Maluku',
        'WAPP',
        'AMQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pitu',
        'Pulau Morotai',
        'Maluku Utara',
        'WAEW',
        'OTI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sultan Babullah',
        'Ternate',
        'Maluku Utara',
        'WAEE',
        'TTE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wahai',
        'Pulau Seram, Maluku Tengah',
        'Maluku',
        'WAPV',
        'WHI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Aboy
(Bandar Udara Borme)',
        'Aboy, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        'ABY'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Aboyaga',
        'Mapia Barat, Dogiyai',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Akimuga',
        'Nduga',
        'Papua Pegunungan',
        'WAYG',
        'AKM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Alama',
        'Mimika',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Anggi',
        'Pegunungan Arfak',
        'Papua Barat',
        'WASG',
        'AGD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Apalapsili',
        'Apalapsili, Yalimo',
        'Papua Pegunungan',
        '–',
        'AAS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ayawasi',
        'Maybrat',
        'Papua Barat Daya',
        '–',
        'AYW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Babo',
        'Teluk Bintuni',
        'Papua Barat',
        'WASO',
        'BXB'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bade',
        'Edera, Mappi',
        'Papua Selatan',
        'WAKE',
        'BXD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Batom',
        'Batom, Pegunungan Bintang',
        'Papua Pegunungan',
        'WABM',
        'BXM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Beoga',
        'Beoga, Puncak',
        'Papua Tengah',
        NULL,
        'BXG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bilogai',
        'Sugapa, Intan Jaya',
        'Papua Tengah',
        'WABY',
        'UGU'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bokondini',
        'Tolikara',
        'Papua Pegunungan',
        'WAJB',
        'BUI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Bomakia',
        'Boven Digoel',
        'Papua Selatan',
        'WAKL',
        'BXG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Botawa',
        'Oudate, Waropen',
        'Papua',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Dabra',
        'Mamberamo Raya',
        'Papua',
        'WAJC',
        'DRH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Domine Edward Osok',
        'Sorong',
        'Papua Barat Daya',
        'WASS',
        'SOQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Doreikar',
        'Raja Ampat',
        'Papua Barat Daya',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Douw Aturure',
        'Nabire',
        'Papua Tengah',
        'WABI',
        'NBX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Elelim',
        'Elelim, Yalimo',
        'Papua Pegunungan',
        'WAJN',
        'ELR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Enarotali',
        'Paniai',
        'Papua Tengah',
        'WAYE',
        'EWI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ewer',
        'Kabupaten Asmat',
        'Papua Selatan',
        'WAKG',
        'EWE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Fakfak
(Bandar Udara Torea)',
        'Fakfak',
        'Papua Barat',
        'WASF',
        'FKQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Fawi',
        'Fawi, Puncak Jaya',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Frans Kaisiepo',
        'Biak, Biak Numfor',
        'Papua',
        'WABB',
        'BIK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ijahabra',
        'Ajami, Kebar, Tambrauw',
        'Papua Barat Daya',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ilaga',
        'Ilaga, Puncak',
        'Papua Tengah',
        'WAYL',
        'ILG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ilu',
        'Ilu, Puncak Jaya',
        'Papua Tengah',
        'WAVC',
        'IUL'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Iwur',
        'Iwur, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Inanwatan',
        'Inanwatan, Sorong Selatan',
        'Papua Barat Daya',
        'WASI',
        'INX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Jefman',
        'Kabupaten Raja Ampat',
        'Papua Barat Daya',
        'SOQ',
        'WASS'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Jila',
        'Jila, Mimika',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Jita',
        'Jita, Mimika',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kambuaya',
        'Ayamaru Timur, Maybrat',
        'Papua Barat Daya',
        'WASU',
        'KBX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kamur',
        'Asmat',
        'Papua Selatan',
        'WAKM',
        'KMR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Karubaga',
        'Karubaga, Tolikara',
        'Papua Pegunungan',
        'WABK',
        'KBF'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kasonaweja',
        'Mamberamo Raya',
        'Papua',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kebar',
        'Kebar, Tambrauw',
        'Papua Barat Daya',
        'WAUK',
        'KEQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kebo',
        'Kebo, Paniai',
        'Papua Tengah',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kelila',
        'Mamberamo Tengah',
        'Papua Pegunungan',
        'WAJV',
        'LLN'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kenyam',
        'Kenyam, Nduga',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kepi',
        'Kepi, Obaa, Mappi',
        'Papua Selatan',
        'WAKP',
        'KEI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kimaam',
        'Kimaam, Merauke',
        'Papua Selatan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kirihi',
        'Kirihi, Waropen',
        'Papua',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kiwirok',
        'Kiwirok, Pegunungan Bintang',
        'Papua Pegunungan',
        'WAJK',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kobakma',
        'Mamberamo Tengah',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kokonao',
        'Mimika Barat, Mimika',
        'Papua',
        'WABN',
        'KOX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Kornasoren
(Bandar Udara Numfor)',
        'Kornasoren, Biak Numfor',
        'Papua',
        'WABF',
        'FOO'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Koroway Batu',
        'Kombay, Boven Digoel',
        'Papua Selatan',
        'WAKJ',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Lereh',
        'Jayapura',
        'Papua',
        'WAJL',
        'LHI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mamberamo Raya',
        'Mamberamo Raya',
        'Papua',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mamit',
        'Kembu, Tolikara',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Manggelum',
        'Boven Digoel',
        'Papua',
        'WAJT',
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mapenduma',
        'Nduga',
        'Papua Pegunungan',
        NULL,
        'MAP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mararena',
        'Sarmi',
        'Papua',
        'WAJI',
        'ZRM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Marinda',
        'Raja Ampat',
        'Papua Barat Daya',
        'WASN',
        'RJM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Meididga',
        'Manokwari',
        'Papua Barat',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Merdey',
        'Teluk Bintuni',
        'Papua Barat',
        'WASM',
        'RDE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mindiptana',
        'Mindiptana, Boven Digoel',
        'Papua',
        'WAKD',
        'MDP'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Misool',
        'Raja Ampat',
        'Papua Barat Daya',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Moanamani',
        'Dogiyai',
        'Papua Tengah',
        'WABD',
        'ONI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Molof',
        'Keerom',
        'Papua',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mopah',
        'Kota Merauke, Merauke',
        'Papua Selatan',
        'WAKK',
        'MKQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mozes Kilangin',
        'Timika',
        'Papua Tengah',
        'WABP',
        'TIM'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mugi',
        'Mugi, Nduga',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Mulia',
        'Mulia, Puncak Jaya',
        'Papua Tengah',
        'WAVA',
        'LII'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ninia',
        'Ninia, Yahukimo',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Nop Goliat Dekai',
        'Dekai, Yahukimo',
        'Papua Pegunungan',
        'WAVD',
        'DEX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Okaba',
        'Okaba, Merauke',
        'Papua Selatan',
        'WAKO',
        'OKQ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Okbab',
        'Okbab, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Oklip',
        'Oklip, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Oksibil',
        'Oksibil',
        'Papua Pegunungan',
        'WAJO',
        'OKL'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Okteneng',
        'Okteneng, Okhika, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Paro',
        'Paro, Nduga',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Pasema',
        'Pasema, Yahukimo',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Potowai',
        'Mimika',
        'Papua Tengah',
        NULL,
        '–'
    );
;
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ransiki',
        'Manokwari Selatan',
        'Papua Barat',
        'WASC',
        'RSK'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Rendani',
        'Manokwari',
        'Papua Barat',
        'WASR',
        'MKW'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Reni',
        'Pulau Reni, Raja Ampat',
        'Papua Barat Daya',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Senggeh',
        'Keerom',
        'Papua',
        'WAJS',
        'SHE'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Senggo',
        'Senggo, Mappi',
        'Papua Selatan',
        'WAKQ',
        'ZEG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sentani',
        'Jayapura',
        'Papua',
        'WAJJ',
        'DJJ'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Seralada',
        'Seralada, Yahukimo',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Silimo',
        'Silimo, Yahukimo',
        'Papua Pegunungan',
        NULL,
        '–'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sinak',
        'Sinak, Puncak',
        'Papua Tengah',
        NULL,
        'NKD'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sobaham',
        'Sobaham, Yahukimo',
        'Papua Pegunungan',
        NULL,
        '–'
    )
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Stenkool (Bandar Udara Bintuni)',
        'Bintuni',
        'Papua Barat',
        'WASB',
        'NTI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Stevanus Rumbewas',
        'Kosiwo, Kepulauan Yapen',
        'Papua',
        'WAPO',
        'ZRI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Sudjarwo Tjondronegoro',
        'Yapen Selatan, Kepulauan Yapen',
        'Papua',
        'WAPO',
        'ZRI'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tanah Merah',
        'Mandobo, Boven Digoel',
        'Papua',
        'WAKT',
        'TMH'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Teminabuan',
        'Sorong Selatan',
        'Papua Barat Daya',
        'WAST',
        'TMX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Teiraplu',
        'Teiraplu, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tiom',
        'Lanny Jaya',
        'Papua Pegunungan',
        'WABH',
        'TMY'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Towe Hitam',
        'Towe, Keerom',
        'Papua',
        'WAJR',
        'WAR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Tsinga',
        'Mimika',
        'Papua Tengah',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Utarom',
        'Kaimana',
        'Papua Barat',
        'WASK',
        'KNG'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Ubrub',
        'Keerom',
        'Papua',
        'WAJU',
        'UBR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Waghete',
        'Deiyai',
        'Papua Tengah',
        'WABA',
        'WET'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wamena',
        'Wamena, Jayawijaya',
        'Papua Pegunungan',
        'WAVV',
        'WMX'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wanam',
        'Merauke',
        'Papua Selatan',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wangbe',
        'Wangbe, Puncak',
        'Papua Tengah',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wanggemalo',
        'Wanggemalo, Boven Digoel',
        'Papua',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wasior',
        'Wasior, Teluk Wondama',
        'Papua Barat',
        'WASW',
        'WSR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Wasior Baru',
        'Wasior, Teluk Wondama',
        'Papua Barat',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Werur',
        'Tambrauw',
        'Papua Barat Daya',
        'WAJY',
        'WRR'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Yaniruma',
        'Yaniruma, Boven Digoel',
        'Papua',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Bandar Udara Yuruf',
        'Yuruf, Keerom',
        'Papua',
        NULL,
        'RUF'
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Lapangan Terbang Abmisibil',
        'Abmisibil, Okbibab, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Lapangan Terbang Anggruk',
        'Anggruk, Yahukimo',
        'Papua Pegunungan',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Lapangan Terbang Bilai',
        'Homeyo, Intan Jaya',
        'Papua Tengah',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Lapangan Terbang Bime',
        'Bime, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        NULL
    );
INSERT INTO airports(name, city, province, icao, iata)
VALUES (
        'Lapangan Terbang Okyop',
        'Okyop, Kiwirok Timur, Pegunungan Bintang',
        'Papua Pegunungan',
        NULL,
        NULL
    );
INSERT INTO flights (
        code_flight,
        departure_time,
        arrival_time,
        departure_airport_name,
        arrival_airport_name,
        departure_airport_id,
        arrival_airport_id,
        status,
        plane_id
    )
VALUES (
        'FL001',
        '2022-01-01 08:00:00',
        '2022-01-01 10:00:00',
        'Soekarno-Hatta International Airport',
        'Ngurah Rai International Airport',
        1,
        2,
        'On Time',
        1
    ),
    (
        'FL002',
        '2022-01-02 08:00:00',
        '2022-01-02 10:00:00',
        'Ngurah Rai International Airport',
        'Soekarno-Hatta International Airport',
        2,
        1,
        'On Time',
        2
    ),
    (
        'FL003',
        '2022-01-03 08:00:00',
        '2022-01-03 10:00:00',
        'Juanda International Airport',
        'Adisutjipto International Airport',
        3,
        4,
        'On Time',
        3
    ),
    (
        'FL004',
        '2022-01-04 08:00:00',
        '2022-01-04 10:00:00',
        'Adisutjipto International Airport',
        'Juanda International Airport',
        4,
        3,
        'On Time',
        4
    ),
    (
        'FL005',
        '2022-01-05 08:00:00',
        '2022-01-05 10:00:00',
        'Sultan Hasanuddin International Airport',
        'Kualanamu International Airport',
        5,
        6,
        'On Time',
        5
    ),
    (
        'FL006',
        '2022-01-06 08:00:00',
        '2022-01-06 10:00:00',
        'Kualanamu International Airport',
        'Sultan Hasanuddin International Airport',
        6,
        5,
        'On Time',
        6
    ),
    (
        'FL007',
        '2022-01-07 08:00:00',
        '2022-01-07 10:00:00',
        'Husein Sastranegara International Airport',
        'Sultan Mahmud Badaruddin II International Airport',
        7,
        8,
        'On Time',
        7
    ),
    (
        'FL008',
        '2022-01-08 08:00:00',
        '2022-01-08 10:00:00',
        'Sultan Mahmud Badaruddin II International Airport',
        'Husein Sastranegara International Airport',
        8,
        7,
        'On Time',
        8
    ),
    (
        'FL009',
        '2022-01-09 08:00:00',
        '2022-01-09 10:00:00',
        'Sam Ratulangi International Airport',
        'Sultan Aji Muhammad Sulaiman Airport',
        9,
        10,
        'On Time',
        9
    ),
    (
        'FL010',
        '2022-01-10 08:00:00',
        '2022-01-10 10:00:00',
        'Sultan Aji Muhammad Sulaiman Airport',
        'Sam Ratulangi International Airport',
        10,
        9,
        'On Time',
        10
    );
INSERT INTO flight_prices (price, class, flight_id)
VALUES (100, 'Economy', 1),
    (150, 'Economy', 2),
    (200, 'Economy', 3),
    (250, 'Economy', 4),
    (300, 'Economy', 5),
    (350, 'Economy', 6),
    (400, 'Economy', 7),
    (450, 'Economy', 8),
    (500, 'Economy', 9),
    (550, 'Economy', 10);
INSERT INTO flight_reservations (class, remining_seat, total_seat, flight_id)
VALUES ('Economy', 172, 172, 1),
    ('Economy', 172, 172, 2),
    ('Economy', 172, 172, 3),
    ('Economy', 172, 172, 4),
    ('Economy', 172, 172, 5),
    ('Economy', 172, 172, 6),
    ('Economy', 172, 172, 7),
    ('Economy', 172, 172, 8),
    ('Economy', 172, 172, 9),
    ('Economy', 172, 172, 10);
-- BEGIN: Generate dummy data for partners table
INSERT INTO partners (name, email, api_key, created_at)
VALUES (
        'Partner 1',
        'partner1@example.com',
        '94d3c72e-be63-4e80-a068-cfa7df5815fc',
        NOW()
    ),
    (
        'Partner 2',
        'partner2@example.com',
        '9907891f-16d1-4a2f-946d-fe83bc0b91ad',
        NOW()
    ),
    (
        'Partner 3',
        'partner3@example.com',
        '6788d9c8-438a-4f2f-a53b-81ccbfe845b3',
        NOW()
    ),
    (
        'Partner 4',
        'partner4@example.com',
        'fb721594-28dd-4ea6-863a-dd8feea264c5',
        NOW()
    ),
    (
        'Partner 5',
        'partner5@example.com',
        '2b4270d2-189f-41a5-a5ab-3de02761127b',
        NOW()
    ),
    (
        'Partner 6',
        'partner6@example.com',
        'faad439a-ff73-41b6-904c-3b99e4dada14',
        NOW()
    ),
    (
        'Partner 7',
        'partner7@example.com',
        'b9630b68-040a-45b1-95d9-fec313da71f9',
        NOW()
    ),
    (
        'Partner 8',
        'partner8@example.com',
        '0a814603-8c11-4a9e-b361-9d917ca7c089',
        NOW()
    ),
    (
        'Partner 9',
        'partner9@example.com',
        '70d165cd-4eea-41d5-bd54-6969b8d08c52',
        NOW()
    ),
    (
        'Partner 10',
        'partner10@example.com',
        '8de7966a-4df1-4d67-a96c-0be9e403477b',
        NOW()
    );
-- END: Generate dummy data for partners table