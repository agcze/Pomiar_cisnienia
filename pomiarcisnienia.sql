
-- Struktura tabeli dla tabeli `Pacjent`
--

CREATE TABLE `Pacjent` (
  `idPacjenta` int(11) NOT NULL,
  `Imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Nazwisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Pesel` bigint(11) NOT NULL,
  `Ulica` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `NrDomu` int(11) NOT NULL,
  `KodPocztowy` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Miejscowosc` varchar(100) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `Telefon` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Inserty tabeli `Pacjent`
--

INSERT INTO `Pacjent` (`idPacjenta`, `Imie`, `Nazwisko`, `Pesel`, `Ulica`, `NrDomu`, `KodPocztowy`, `Miejscowosc`, `Telefon`) VALUES
(15, 'Bartłomniej', 'Piela', 57121195519, 'Floriańska', 45, '34-222', 'Kołobrzeg', 511338874),
(4, 'Patrycja', 'Plata', 60022372541, 'Jeżynowa', 14, '87-900', 'Rzeszotary', 549029300),
(20, 'Grzogorz', 'Brzęczyszczykiewicz', 62122479672, 'Dunajcowa', 8, '32-443', 'Limanowa', 688577593),
(8, 'Piotr', 'Rak', 66033044972, 'Lisia', 12, '65-670', 'Lublin', 832079368),
(16, 'Tomasz', 'Biliński', 66081366855, 'Lawendowa', 11, '23-112', 'Szczecin', 636447997),
(22, 'Helena', 'Tesla', 67110985627, 'Grunwaldzka', 6, '65-500', 'Zakopane', 766514364),
(28, 'Sabina', 'Leśniak', 71071451369, 'Olsztyńska', 56, '44-678', 'Lubań', 561382982),
(7, 'Małgorzata', 'Lupa', 71081131219, 'Floriańska', 31, '22-564', 'Poznań', 631988587),
(6, 'Karolina', 'Trik', 72052664165, 'Chrobrego', 10, '76-444', 'Liszki', 623544824),
(13, 'Paulina', 'Listkiewcz', 73103063968, 'Wierzbowa', 28, '56-116', 'Inowrocław', 615611640),
(26, 'Leopold', 'Chmura', 73110224378, 'Ogrodowa', 15, '80-887', 'Bystrzyca Kłodzka', 644850682),
(14, 'Danuta', 'Poręba', 74102346841, 'Korfantego', 76, '66-777', 'Sopot', 678074854),
(5, 'Tomasz', 'Kiełbasa', 75081339523, 'Akacjowa', 44, '65-009', 'Kielce', 825335616),
(25, 'Maciej', 'Zaremba', 79020785136, 'Polna', 54, '78-600', 'Janikowo', 976273099),
(18, 'Robert', 'Ulman', 80062977656, 'Piłsudskiego', 12, '65-556', 'Tarnów', 960126142),
(27, 'Filip', 'Cichy', 80091728973, 'Towarowa', 34, '60-500', 'Karpacz', 727115998),
(24, 'Lucyna', 'Marzec', 84060112169, 'Nadmorska', 14, '99-900', 'Grzybowo', 792977256),
(12, 'Krystyna', 'Sroka', 84102017827, 'Piotrkowska', 4, '44-332', 'Wrocław', 712571982),
(21, 'Katarzyna', 'Gil', 85031636884, 'Powstańców', 3, '89-900', 'Szczawnica', 713209956),
(1, 'Marek', 'Pius', 85123166796, 'Kwiatowa', 15, '41-651', 'Płock', 798970079),
(11, 'Beata', 'Talar', 86011157584, 'Igielna', 56, '66-875', 'Wadowice', 793968897),
(9, 'Janina', 'Jaś', 86071754589, 'Pierwsza', 89, '77-112', 'Kęty', 767576468),
(17, 'Dawid', 'Ciężarek', 89011815467, 'Dawna', 43, '74-889', 'Suwałki', 707011546),
(10, 'Antoni', 'Niedzielski', 90121034541, 'Kolorowa', 7, '54-440', 'Zabrze', 888408813),
(23, 'Justyna', 'Twardowska', 91052911787, 'Warszawska', 5, '77-800', 'Lipki', 540384041),
(3, 'Eryk', 'Pomietło', 93032412976, 'Różana', 1, '60-500', 'Zielona Góra', 698213794),
(19, 'Hubert', 'Nowak', 97073054492, 'Kocia', 4, '55-778', 'Rzeszów', 844857472),
(2, 'Bogdan', 'Wiosło', 99111388345, 'Potoczkowa', 25, '42-300', 'Wisła', 905892800);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `Pomiar`
--

CREATE TABLE `Pomiar` (
  `idPomiaru` int(11) NOT NULL,
  `IdPacjenta` int(11) NOT NULL,
  `PeselPacjenta` bigint(11) NOT NULL,
  `DataPomiaru` date NOT NULL,
  `GodzinaPomiaru` time NOT NULL,
  `CisnienieSkurczowe` int(11) NOT NULL,
  `CisnienieRozkurczowe` int(11) NOT NULL,
  `Tetno` int(11) NOT NULL,
  `Uwagi` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Inserty tabeli `Pomiar`
--

INSERT INTO `Pomiar` (`idPomiaru`, `IdPacjenta`, `PeselPacjenta`, `DataPomiaru`, `GodzinaPomiaru`, `CisnienieSkurczowe`, `CisnienieRozkurczowe`, `Tetno`, `Uwagi`) VALUES
(1, 1, 85123166796, '2020-03-03', '07:15:00', 158, 98, 76, 'brak'),
(2, 1, 85123166796, '2020-03-03', '19:32:00', 158, 97, 68, 'brak'),
(3, 2, 99111388345, '2020-03-03', '07:17:00', 150, 102, 77, 'brak'),
(4, 2, 99111388345, '2020-03-03', '19:34:00', 156, 102, 72, 'brak'),
(5, 3, 93032412976, '2020-03-04', '07:44:00', 165, 105, 72, 'brak'),
(6, 3, 93032412976, '2020-03-04', '18:43:00', 148, 95, 70, 'brak'),
(7, 4, 60022372541, '2020-03-04', '07:50:00', 163, 99, 62, 'brak'),
(8, 4, 60022372541, '2020-03-04', '18:45:00', 145, 93, 72, 'brak'),
(9, 5, 75081339523, '2020-03-05', '07:34:00', 153, 94, 65, 'brak'),
(10, 5, 75081339523, '2020-03-05', '19:06:00', 151, 99, 68, 'brak'),
(11, 6, 72052664165, '2020-03-05', '07:36:00', 150, 91, 61, 'brak'),
(12, 6, 72052664165, '2020-03-05', '19:08:00', 148, 97, 64, 'brak'),
(13, 7, 71081131219, '2020-03-06', '08:00:00', 148, 94, 60, 'brak'),
(14, 7, 71081131219, '2020-03-06', '19:43:00', 155, 102, 67, 'brak'),
(15, 8, 66033044972, '2020-03-06', '08:05:00', 152, 96, 58, 'brak'),
(16, 8, 66033044972, '2020-03-06', '19:45:00', 152, 98, 68, 'brak'),
(17, 9, 86071754589, '2020-03-07', '06:45:00', 158, 96, 68, 'brak'),
(18, 9, 86071754589, '2020-03-07', '20:10:00', 140, 92, 65, 'brak'),
(19, 10, 90121034541, '2020-03-07', '06:48:00', 156, 94, 74, 'brak'),
(20, 10, 90121034541, '2020-03-07', '20:13:00', 138, 89, 62, 'brak'),
(21, 11, 86011157584, '2020-03-08', '07:05:00', 145, 89, 65, 'Brak'),
(22, 11, 86011157584, '2020-03-08', '19:00:00', 144, 98, 70, 'Brak'),
(23, 12, 84102017827, '2020-03-08', '07:07:00', 140, 95, 67, 'Brak'),
(24, 12, 84102017827, '2020-03-08', '19:02:00', 142, 94, 68, 'Brak'),
(25, 13, 73103063968, '2020-03-09', '06:45:00', 150, 98, 68, 'Brak'),
(26, 13, 73103063968, '2020-03-09', '19:32:00', 148, 91, 66, 'Brak'),
(27, 14, 74102346841, '2020-03-09', '06:47:00', 142, 95, 64, 'Brak'),
(28, 14, 74102346841, '2020-03-09', '19:34:00', 150, 98, 68, 'Brak'),
(29, 15, 57121195519, '2020-04-15', '06:45:00', 148, 94, 67, 'Brak'),
(30, 15, 57121195519, '2020-04-15', '19:45:00', 143, 91, 65, 'Brak'),
(31, 16, 66081366855, '2020-04-15', '06:47:00', 141, 92, 72, 'Brak'),
(32, 16, 66081366855, '2020-04-15', '19:47:00', 142, 92, 63, 'Brak'),
(33, 17, 89011815467, '2020-04-16', '07:43:00', 146, 95, 73, 'Brak'),
(34, 17, 89011815467, '2020-04-16', '18:34:00', 134, 86, 72, 'Brak'),
(35, 18, 80062977656, '2020-04-16', '07:46:00', 144, 91, 65, 'Brak'),
(36, 18, 80062977656, '2020-04-16', '18:32:00', 135, 83, 70, 'Brak'),
(37, 19, 97073054492, '2020-04-17', '06:45:00', 141, 86, 67, 'Brak'),
(38, 19, 97073054492, '2020-04-17', '18:06:00', 141, 92, 67, 'Brak'),
(39, 20, 62122479672, '2020-04-17', '06:48:00', 143, 85, 63, 'Brak'),
(40, 20, 62122479672, '2020-04-17', '18:08:00', 138, 87, 68, 'Brak'),
(41, 21, 85031636884, '2020-04-18', '08:03:00', 137, 89, 63, 'Brak'),
(42, 21, 85031636884, '2020-04-18', '20:10:00', 135, 87, 68, 'Brak'),
(43, 22, 67110985627, '2020-04-18', '08:05:00', 139, 87, 59, 'Brak'),
(44, 22, 67110985627, '2020-04-18', '20:15:00', 132, 78, 65, 'Brak'),
(45, 23, 91052911787, '2020-04-19', '07:10:00', 148, 95, 71, 'Brak'),
(46, 23, 91052911787, '2020-04-19', '20:34:00', 131, 82, 67, 'Brak'),
(47, 24, 84060112169, '2020-04-19', '07:12:00', 145, 91, 68, 'Brak'),
(48, 24, 84060112169, '2020-04-19', '20:37:00', 128, 79, 65, 'Brak'),
(49, 25, 79020785136, '2020-04-20', '06:35:00', 141, 81, 64, 'Brak'),
(50, 25, 79020785136, '2020-04-20', '19:10:00', 134, 87, 68, 'Brak'),
(51, 26, 73110224378, '2020-04-20', '06:38:00', 139, 80, 65, 'Brak'),
(52, 26, 73110224378, '2020-04-20', '19:00:00', 132, 84, 65, 'Brak'),
(53, 27, 80091728973, '2020-04-21', '06:50:00', 140, 88, 71, 'Brak'),
(54, 27, 80091728973, '2020-04-21', '19:10:00', 134, 87, 68, 'Brak'),
(55, 28, 71071451369, '2020-04-21', '06:52:00', 133, 87, 64, 'Brak'),
(56, 28, 71071451369, '2020-04-21', '19:12:00', 140, 87, 78, 'Brak');


--
-- Indeksy dla tabeli `Pacjent`
--
ALTER TABLE `Pacjent`
  ADD PRIMARY KEY (`Pesel`),
  ADD UNIQUE KEY `idPacjenta` (`idPacjenta`);

--
-- Indeksy dla tabeli `Pomiar`
--
ALTER TABLE `Pomiar`
  ADD PRIMARY KEY (`idPomiaru`),
  ADD KEY `PeselPacjenta` (`PeselPacjenta`);



--
-- AUTO_INCREMENT dla tabeli `Pacjent`
--
ALTER TABLE `Pacjent`
  MODIFY `idPacjenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT dla tabeli `Pomiar`
--
ALTER TABLE `Pomiar`
  MODIFY `idPomiaru` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;



--
-- Ograniczenia dla tabeli `Pomiar`
--
ALTER TABLE `Pomiar`
  ADD CONSTRAINT `Pomiar_ibfk_1` FOREIGN KEY (`PeselPacjenta`) REFERENCES `Pacjent` (`Pesel`);
COMMIT;
