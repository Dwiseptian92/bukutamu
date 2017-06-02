CREATE EVENT auto_checkout
ON SCHEDULE EVERY 1 DAY STARTS '2017-06-02 23:00:00'
DO UPDATE tamu
SET tgl_jam_keluar = NOW(), status_check = 0
WHERE status_check = 1