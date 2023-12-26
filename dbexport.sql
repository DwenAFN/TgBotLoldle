--
-- PostgreSQL database dump
--

-- Dumped from database version 16.1
-- Dumped by pg_dump version 16.1

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: adminpack; Type: EXTENSION; Schema: -; Owner: -
--

CREATE EXTENSION IF NOT EXISTS adminpack WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION adminpack; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION adminpack IS 'administrative functions for PostgreSQL';


SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: abilities; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.abilities (
    "AbilityID" integer NOT NULL,
    "Champion" character varying,
    "Path" character varying
);


ALTER TABLE public.abilities OWNER TO postgres;

--
-- Name: abilities_AbilityID_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

ALTER TABLE public.abilities ALTER COLUMN "AbilityID" ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public."abilities_AbilityID_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);


--
-- Name: champions; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.champions (
    name character varying NOT NULL,
    gender character varying,
    "position" character varying,
    species character varying,
    resource character varying,
    range_type character varying,
    regions character varying,
    release_year integer
);


ALTER TABLE public.champions OWNER TO postgres;

--
-- Name: users; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.users (
    "UserID" bigint NOT NULL,
    "Username" character varying(20) NOT NULL,
    "Guessed Champions" integer DEFAULT 0 NOT NULL,
    "Guessed Abilities" integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.users OWNER TO postgres;

--
-- Data for Name: abilities; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.abilities ("AbilityID", "Champion", "Path") FROM stdin;
2003	Caitlyn	images/0.png
2004	Fiddlesticks	images/1.png
2005	Sylas	images/2.png
2006	Bel'Veth	images/3.png
2007	Sylas	images/4.png
2008	Sylas	images/5.png
2009	Nunu & Willump	images/6.png
2010	Senna	images/7.png
2011	Tahm Kench	images/8.png
2012	Jayce	images/9.png
2013	Caitlyn	images/10.png
2014	Camille	images/11.png
2015	Pantheon	images/12.png
2016	K'Sante	images/13.png
2017	Evelynn	images/14.png
2018	Master Yi	images/15.png
2019	Twitch	images/16.png
2020	Tahm Kench	images/17.png
2021	Nilah	images/18.png
2022	Darius	images/19.png
2023	Nami	images/20.png
2024	Ryze	images/21.png
2025	Ezreal	images/22.png
2026	Xerath	images/23.png
2027	Sejuani	images/24.png
2028	Lucian	images/25.png
2029	Sona	images/26.png
2030	Azir	images/27.png
2031	Nidalee	images/28.png
2032	Akali	images/29.png
2033	Talon	images/30.png
2034	Aurelion Sol	images/31.png
2035	Soraka	images/32.png
2036	Xin Zhao	images/33.png
2037	Qiyana	images/34.png
2038	Akshan	images/35.png
2039	Shaco	images/36.png
2040	Renata Glasc	images/37.png
2041	Veigar	images/38.png
2042	Amumu	images/39.png
2043	Gragas	images/40.png
2044	Taric	images/41.png
2045	Rakan	images/42.png
2046	Tryndamere	images/43.png
2047	Rengar	images/44.png
2048	Kled	images/45.png
2049	Kled	images/46.png
2050	Seraphine	images/47.png
2051	Quinn	images/48.png
2052	Ornn	images/49.png
2053	Olaf	images/50.png
2054	Nunu & Willump	images/51.png
2055	Aphelios	images/52.png
2056	Kog'Maw	images/53.png
2057	Morgana	images/54.png
2058	Riven	images/55.png
2059	Viego	images/56.png
2060	Samira	images/57.png
2061	Talon	images/58.png
2062	Kayn	images/59.png
2063	Kayn	images/60.png
2064	Kayn	images/61.png
2065	Xayah	images/62.png
2066	Irelia	images/63.png
2067	Fiora	images/64.png
2068	Vi	images/65.png
2069	Brand	images/66.png
2070	Udyr	images/67.png
2071	Varus	images/68.png
2072	Quinn	images/69.png
2073	Teemo	images/70.png
2074	Briar	images/71.png
2075	Warwick	images/72.png
2076	Draven	images/73.png
2077	Tryndamere	images/74.png
2078	Lillia	images/75.png
2079	Neeko	images/76.png
2080	Dr. Mundo	images/77.png
2081	Gragas	images/78.png
2082	Rengar	images/79.png
2083	Pyke	images/80.png
2084	Sivir	images/81.png
2085	Gnar	images/82.png
2086	Gnar	images/83.png
2087	Gnar	images/84.png
2088	Katarina	images/85.png
2089	Ziggs	images/86.png
2090	Fiddlesticks	images/87.png
2091	Maokai	images/88.png
2092	Taric	images/89.png
2093	Rell	images/90.png
2094	Milio	images/91.png
2095	Aurelion Sol	images/92.png
2096	Udyr	images/93.png
2097	Riven	images/94.png
2098	Ivern	images/95.png
2099	Miss Fortune	images/96.png
2100	Shyvana	images/97.png
2101	Rek'Sai	images/98.png
2102	Rek'Sai	images/99.png
2103	Zeri	images/100.png
2104	Nidalee	images/101.png
2105	Nidalee	images/102.png
2106	Tristana	images/103.png
2107	Aphelios	images/104.png
2108	Ornn	images/105.png
2109	Nunu & Willump	images/106.png
2110	Malzahar	images/107.png
2111	Gangplank	images/108.png
2112	Jhin	images/109.png
2113	Bard	images/110.png
2114	Cho'Gath	images/111.png
2115	Jarvan IV	images/112.png
2116	Kog'Maw	images/113.png
2117	Vi	images/114.png
2118	Kayle	images/115.png
2119	Zac	images/116.png
2120	Briar	images/117.png
2121	Heimerdinger	images/118.png
2122	Heimerdinger	images/119.png
2123	Kled	images/120.png
2124	Sylas	images/121.png
2125	Varus	images/122.png
2126	Viktor	images/123.png
2127	Ahri	images/124.png
2128	Briar	images/125.png
2129	Trundle	images/126.png
2130	Ekko	images/127.png
2131	Zilean	images/128.png
2132	Fizz	images/129.png
2133	Xayah	images/130.png
2134	Orianna	images/131.png
2135	Elise	images/132.png
2136	Elise	images/133.png
2137	Graves	images/134.png
2138	Galio	images/135.png
2139	Pantheon	images/136.png
2140	Akshan	images/137.png
2141	Orianna	images/138.png
2142	Orianna	images/139.png
2143	Orianna	images/140.png
2144	Orianna	images/141.png
2145	Braum	images/142.png
2146	Vayne	images/143.png
2147	Brand	images/144.png
2148	Azir	images/145.png
2149	Nunu & Willump	images/146.png
2150	Twitch	images/147.png
2151	Zed	images/148.png
2152	Urgot	images/149.png
2153	Bard	images/150.png
2154	Aurelion Sol	images/151.png
2155	Taric	images/152.png
2156	Jax	images/153.png
2157	Garen	images/154.png
2158	Milio	images/155.png
2159	Sona	images/156.png
2160	Aphelios	images/157.png
2161	Xin Zhao	images/158.png
2162	Diana	images/159.png
2163	Briar	images/160.png
2164	Vladimir	images/161.png
2165	Lee Sin	images/162.png
2166	Darius	images/163.png
2167	Fiddlesticks	images/164.png
2168	Gnar	images/165.png
2169	Wukong	images/166.png
2170	Skarner	images/168.png
2171	Skarner	images/169.png
2172	Skarner	images/170.png
2173	Anivia	images/171.png
2174	Renekton	images/172.png
2175	Senna	images/173.png
2176	Amumu	images/174.png
2177	Amumu	images/175.png
2178	Jhin	images/176.png
2179	Wukong	images/177.png
2180	Ivern	images/178.png
2181	Thresh	images/179.png
2182	Kindred	images/180.png
2183	Jhin	images/181.png
2184	Samira	images/182.png
2185	Morgana	images/183.png
2186	Veigar	images/184.png
2187	Thresh	images/185.png
2188	Yorick	images/186.png
2189	Syndra	images/187.png
2190	Naafiri	images/188.png
2191	Mordekaiser	images/189.png
2192	K'Sante	images/190.png
2193	Senna	images/191.png
2194	Taric	images/192.png
2195	Jhin	images/193.png
2196	Xayah	images/194.png
2197	Zyra	images/195.png
2198	Twitch	images/196.png
2199	Karthus	images/197.png
2200	Pyke	images/198.png
2201	Bel'Veth	images/199.png
2202	Katarina	images/200.png
2203	Zed	images/201.png
2204	Viktor	images/202.png
2205	Thresh	images/203.png
2206	Sion	images/204.png
2207	Mordekaiser	images/205.png
2208	Swain	images/206.png
2209	Aatrox	images/207.png
2210	Shaco	images/208.png
2211	Darius	images/209.png
2212	Sion	images/210.png
2213	Garen	images/211.png
2214	Rammus	images/212.png
2215	Karma	images/213.png
2216	Irelia	images/214.png
2217	Karthus	images/215.png
2218	Garen	images/216.png
2219	Jarvan IV	images/217.png
2220	Evelynn	images/218.png
2221	Swain	images/219.png
2222	Swain	images/220.png
2223	Vi	images/221.png
2224	Nautilus	images/222.png
2225	Amumu	images/223.png
2226	Twisted Fate	images/224.png
2227	Xin Zhao	images/225.png
2228	Hecarim	images/226.png
2229	Tahm Kench	images/228.png
2230	Akshan	images/229.png
2231	Urgot	images/230.png
2232	Annie	images/231.png
2233	LeBlanc	images/232.png
2234	Kayle	images/233.png
2235	Kayle	images/234.png
2236	Renekton	images/235.png
2237	Vex	images/236.png
2238	Xayah	images/237.png
2239	Master Yi	images/238.png
2240	Miss Fortune	images/239.png
2241	Jarvan IV	images/240.png
2242	Shyvana	images/241.png
2243	Lee Sin	images/242.png
2244	Tristana	images/243.png
2245	Lillia	images/244.png
2246	Nautilus	images/245.png
2247	Gragas	images/246.png
2248	Fiora	images/247.png
2249	Nocturne	images/248.png
2250	Aphelios	images/249.png
2251	Nami	images/250.png
2252	Urgot	images/251.png
2253	Leona	images/252.png
2254	Qiyana	images/253.png
2255	Zac	images/254.png
2256	Kennen	images/255.png
2257	Rumble	images/256.png
2258	Azir	images/257.png
2259	Jax	images/258.png
2260	Rengar	images/259.png
2261	Rengar	images/260.png
2262	Rengar	images/261.png
2263	Evelynn	images/262.png
2264	Ashe	images/263.png
2265	Seraphine	images/264.png
2266	Graves	images/265.png
2267	Bel'Veth	images/266.png
2268	Soraka	images/267.png
2269	Ezreal	images/268.png
2270	Ahri	images/269.png
2271	Warwick	images/270.png
2272	LeBlanc	images/271.png
2273	Yorick	images/272.png
2274	Veigar	images/273.png
2275	Naafiri	images/274.png
2276	Gragas	images/275.png
2277	Tristana	images/276.png
2278	Xerath	images/277.png
2279	Janna	images/278.png
2280	Sett	images/279.png
2281	Aurelion Sol	images/280.png
2282	Yone	images/281.png
2283	Kalista	images/282.png
2284	Urgot	images/283.png
2285	Cho'Gath	images/284.png
2286	Xayah	images/285.png
2287	Yuumi	images/286.png
2288	Cho'Gath	images/287.png
2289	Rell	images/288.png
2290	Rell	images/289.png
2291	Rell	images/290.png
2292	Rakan	images/291.png
2293	Yuumi	images/292.png
2294	Vayne	images/293.png
2295	Lux	images/294.png
2296	Milio	images/295.png
2297	Jinx	images/296.png
2298	Akali	images/297.png
2299	Samira	images/298.png
2300	Shyvana	images/299.png
2301	Jinx	images/300.png
2302	Rumble	images/301.png
2303	Anivia	images/302.png
2304	Irelia	images/303.png
2305	Thresh	images/304.png
2306	Sivir	images/305.png
2307	Singed	images/307.png
2308	Lee Sin	images/308.png
2309	Karma	images/309.png
2310	K'Sante	images/310.png
2311	Syndra	images/311.png
2312	Kassadin	images/312.png
2313	Nilah	images/313.png
2314	Ahri	images/314.png
2315	Skarner	images/315.png
2316	Volibear	images/316.png
2317	Rammus	images/317.png
2318	Ivern	images/318.png
2319	Ashe	images/319.png
2320	Anivia	images/320.png
2321	Trundle	images/321.png
2322	Lissandra	images/322.png
2323	Rell	images/323.png
2324	Rek'Sai	images/324.png
2325	Rek'Sai	images/325.png
2326	Shyvana	images/326.png
2327	Sejuani	images/327.png
2328	Nasus	images/328.png
2329	Rek'Sai	images/329.png
2330	Zyra	images/330.png
2331	Karma	images/331.png
2332	Corki	images/332.png
2333	Jinx	images/334.png
2334	Pyke	images/335.png
2335	Pyke	images/336.png
2336	Braum	images/337.png
2337	Lissandra	images/338.png
2338	Sejuani	images/339.png
2339	Anivia	images/340.png
2340	Rakan	images/341.png
2341	Lulu	images/342.png
2342	Viktor	images/343.png
2343	Sion	images/344.png
2344	Gnar	images/345.png
2345	Dr. Mundo	images/346.png
2346	Akshan	images/347.png
2347	Jarvan IV	images/348.png
2348	Fiora	images/349.png
2349	Rakan	images/350.png
2350	Pantheon	images/351.png
2351	Malphite	images/352.png
2352	Zyra	images/353.png
2353	Aphelios	images/354.png
2354	Viktor	images/355.png
2355	Malphite	images/357.png
2356	Teemo	images/358.png
2357	Heimerdinger	images/359.png
2358	Heimerdinger	images/360.png
2359	Varus	images/361.png
2360	Gwen	images/362.png
2361	Shaco	images/363.png
2362	Poppy	images/364.png
2363	Renata Glasc	images/365.png
2364	Gragas	images/366.png
2365	Quinn	images/367.png
2366	Viego	images/368.png
2367	Illaoi	images/369.png
2368	Evelynn	images/370.png
2369	Ashe	images/371.png
2370	Sett	images/372.png
2371	Briar	images/373.png
2372	Alistar	images/374.png
2373	Caitlyn	images/375.png
2374	Dr. Mundo	images/376.png
2375	Viego	images/377.png
2376	Quinn	images/378.png
2377	Lulu	images/379.png
2378	Vladimir	images/380.png
2379	Darius	images/381.png
2380	Galio	images/382.png
2381	Poppy	images/383.png
2382	Akshan	images/384.png
2383	Ziggs	images/385.png
2384	Heimerdinger	images/386.png
2385	Jayce	images/387.png
2386	Heimerdinger	images/388.png
2387	Corki	images/389.png
2388	Heimerdinger	images/390.png
2389	Camille	images/391.png
2390	Seraphine	images/392.png
2391	Master Yi	images/393.png
2392	Sylas	images/394.png
2393	Camille	images/395.png
2394	Camille	images/396.png
2395	Gnar	images/397.png
2396	Gnar	images/398.png
2397	Renata Glasc	images/399.png
2398	Naafiri	images/400.png
2399	Janna	images/401.png
2400	Elise	images/402.png
2401	Sona	images/403.png
2402	Gnar	images/404.png
2403	Gnar	images/405.png
2404	Jayce	images/406.png
2405	Kai'Sa	images/407.png
2406	Kog'Maw	images/408.png
2407	Lissandra	images/409.png
2408	Lissandra	images/410.png
2409	Lux	images/411.png
2410	Skarner	images/412.png
2411	Annie	images/413.png
2412	Mordekaiser	images/414.png
2413	Dr. Mundo	images/415.png
2414	Aatrox	images/416.png
2415	Samira	images/417.png
2416	Aphelios	images/418.png
2417	Warwick	images/419.png
2418	Neeko	images/420.png
2419	Karma	images/421.png
2420	Singed	images/422.png
2421	Karma	images/423.png
2422	Irelia	images/424.png
2423	Poppy	images/425.png
2424	Udyr	images/426.png
2425	Lee Sin	images/427.png
2426	Shaco	images/428.png
2427	Nidalee	images/429.png
2428	Nidalee	images/430.png
2429	Warwick	images/431.png
2430	Kled	images/432.png
2431	Nilah	images/433.png
2432	Nilah	images/434.png
2433	Garen	images/435.png
2434	Rumble	images/436.png
2435	Galio	images/437.png
2436	Poppy	images/438.png
2437	Shen	images/439.png
2438	Riven	images/440.png
2439	Kai'Sa	images/441.png
2440	Trundle	images/442.png
2441	Sylas	images/443.png
2442	Sett	images/444.png
2443	Kindred	images/445.png
2444	Yasuo	images/446.png
2445	Evelynn	images/447.png
2446	Senna	images/448.png
2447	Yorick	images/449.png
2448	Karthus	images/450.png
2449	Draven	images/451.png
2450	Kha'Zix	images/452.png
2451	Illaoi	images/453.png
2452	Jax	images/454.png
2453	Zac	images/455.png
2454	Renata Glasc	images/456.png
2455	Vel'Koz	images/457.png
2456	Lux	images/458.png
2457	Zeri	images/459.png
2458	Jayce	images/460.png
2459	Jayce	images/461.png
2460	Kennen	images/462.png
2461	Lucian	images/463.png
2462	Lillia	images/464.png
2463	Kog'Maw	images/465.png
2464	Zeri	images/466.png
2465	Ornn	images/467.png
2466	Zed	images/468.png
2467	Varus	images/469.png
2468	Twisted Fate	images/470.png
2469	Vex	images/471.png
2470	Miss Fortune	images/472.png
2471	Rakan	images/473.png
2472	Renata Glasc	images/474.png
2473	Lux	images/475.png
2474	Diana	images/476.png
2475	Fiora	images/477.png
2476	Bard	images/478.png
2477	Rell	images/479.png
2478	Miss Fortune	images/480.png
2479	Malzahar	images/481.png
2480	Blitzcrank	images/482.png
2481	Xerath	images/483.png
2482	Karma	images/484.png
2483	Kindred	images/485.png
2484	Kennen	images/486.png
2485	Jarvan IV	images/487.png
2486	Kalista	images/488.png
2487	Jax	images/489.png
2488	Dr. Mundo	images/490.png
2489	Master Yi	images/491.png
2490	Singed	images/492.png
2491	Ziggs	images/493.png
2492	Jayce	images/494.png
2493	Jayce	images/495.png
2494	Jayce	images/496.png
2495	Cassiopeia	images/497.png
2496	LeBlanc	images/498.png
2497	LeBlanc	images/499.png
2498	LeBlanc	images/500.png
2499	LeBlanc	images/501.png
2500	LeBlanc	images/502.png
2501	Corki	images/503.png
2502	Vex	images/504.png
2503	Tryndamere	images/505.png
2504	Annie	images/507.png
2505	Janna	images/508.png
2506	Diana	images/509.png
2507	Aphelios	images/510.png
2508	Aphelios	images/511.png
2509	Aphelios	images/512.png
2510	Aphelios	images/513.png
2511	Aphelios	images/514.png
2512	Aphelios	images/515.png
2513	Aphelios	images/516.png
2514	Diana	images/517.png
2515	Zoe	images/518.png
2516	Yone	images/519.png
2517	Pantheon	images/520.png
2518	Kindred	images/521.png
2519	Yorick	images/522.png
2520	Teemo	images/523.png
2521	Ezreal	images/524.png
2522	Maokai	images/525.png
2523	Gwen	images/526.png
2524	Kassadin	images/527.png
2525	Malzahar	images/528.png
2526	Elise	images/529.png
2527	Elise	images/530.png
2528	Swain	images/531.png
2529	Graves	images/532.png
2530	Vayne	images/533.png
2531	Fizz	images/534.png
2532	Wukong	images/535.png
2533	Talon	images/536.png
2534	Darius	images/537.png
2535	Darius	images/538.png
2536	Cassiopeia	images/539.png
2537	Singed	images/540.png
2538	Teemo	images/541.png
2539	K'Sante	images/542.png
2540	Kassadin	images/543.png
2541	Mordekaiser	images/544.png
2542	Sivir	images/545.png
2543	Aphelios	images/546.png
2544	Hecarim	images/547.png
2545	Ahri	images/548.png
2546	Vel'Koz	images/549.png
2547	Blitzcrank	images/550.png
2548	Ryze	images/551.png
2549	Zoe	images/552.png
2550	Diana	images/553.png
2551	Ekko	images/554.png
2552	Nocturne	images/555.png
2553	Gangplank	images/556.png
2554	K'Sante	images/557.png
2555	Akali	images/558.png
2556	Sejuani	images/559.png
2557	Garen	images/560.png
2558	Vex	images/561.png
2559	Sylas	images/562.png
2560	Cassiopeia	images/563.png
2561	Pyke	images/564.png
2562	Aphelios	images/565.png
2563	Ekko	images/566.png
2564	Veigar	images/567.png
2565	Corki	images/568.png
2566	Twisted Fate	images/569.png
2567	Kalista	images/570.png
2568	Varus	images/571.png
2569	Senna	images/572.png
2570	Lucian	images/573.png
2571	Brand	images/574.png
2572	Trundle	images/575.png
2573	Caitlyn	images/576.png
2574	Sett	images/577.png
2575	Lulu	images/578.png
2576	Vel'Koz	images/579.png
2577	Fizz	images/580.png
2578	Kled	images/581.png
2579	Singed	images/582.png
2580	Neeko	images/584.png
2581	Zoe	images/585.png
2582	Nidalee	images/586.png
2583	Jinx	images/587.png
2584	Gangplank	images/588.png
2585	Sona	images/589.png
2586	Blitzcrank	images/590.png
2587	Rammus	images/591.png
2588	Camille	images/592.png
2589	Katarina	images/593.png
2590	Rek'Sai	images/594.png
2591	Warwick	images/595.png
2592	Nidalee	images/596.png
2593	Nidalee	images/597.png
2594	Veigar	images/598.png
2595	Lux	images/599.png
2596	Illaoi	images/600.png
2597	Nidalee	images/601.png
2598	Yuumi	images/602.png
2599	Alistar	images/603.png
2600	Urgot	images/604.png
2601	Brand	images/605.png
2602	Annie	images/606.png
2603	Rek'Sai	images/607.png
2604	Rek'Sai	images/608.png
2605	Graves	images/609.png
2606	Kayle	images/610.png
2607	Gnar	images/611.png
2608	Olaf	images/612.png
2609	Talon	images/613.png
2610	Hecarim	images/614.png
2611	Zyra	images/615.png
2612	Ashe	images/616.png
2613	Tristana	images/617.png
2614	Elise	images/618.png
2615	Swain	images/619.png
2616	Zed	images/620.png
2617	Mordekaiser	images/621.png
2618	Ryze	images/622.png
2619	Fiddlesticks	images/623.png
2620	Kayn	images/624.png
2621	Kayn	images/625.png
2622	Kayn	images/626.png
2623	Anivia	images/627.png
2624	Olaf	images/628.png
2625	Renekton	images/629.png
2626	Jax	images/630.png
2627	Vi	images/631.png
2628	Lucian	images/632.png
2629	Gangplank	images/633.png
2630	Kalista	images/634.png
2631	Karma	images/635.png
2632	Karthus	images/636.png
2633	Lee Sin	images/637.png
2634	Zilean	images/638.png
2635	Sivir	images/639.png
2636	Kassadin	images/640.png
2637	Lissandra	images/641.png
2638	Fiora	images/642.png
2639	Nautilus	images/643.png
2640	Ezreal	images/644.png
2641	Xerath	images/645.png
2642	Sion	images/646.png
2643	Taliyah	images/647.png
2644	Blitzcrank	images/648.png
2645	Tristana	images/649.png
2646	Ivern	images/650.png
2647	Bel'Veth	images/651.png
2648	Qiyana	images/652.png
2649	Ryze	images/653.png
2650	Riven	images/654.png
2651	Cho'Gath	images/655.png
2652	Renekton	images/656.png
2653	Lee Sin	images/657.png
2654	Lee Sin	images/658.png
2655	Soraka	images/659.png
2656	Vladimir	images/660.png
2657	Maokai	images/661.png
2658	Maokai	images/662.png
2659	Ziggs	images/663.png
2660	Rengar	images/664.png
2661	Syndra	images/665.png
2662	Rumble	images/666.png
2663	Brand	images/667.png
2664	Ornn	images/668.png
2665	Fizz	images/669.png
2666	Kai'Sa	images/670.png
2667	Malphite	images/671.png
2668	Taliyah	images/672.png
2669	Kalista	images/673.png
2670	Aphelios	images/674.png
2671	Cassiopeia	images/675.png
2672	Aphelios	images/677.png
2673	Talon	images/678.png
2674	Shen	images/679.png
2675	Zed	images/680.png
2676	Kayn	images/681.png
2677	Kayn	images/682.png
2678	Kayn	images/683.png
2679	Vex	images/684.png
2680	Neeko	images/685.png
2681	Rell	images/686.png
2682	Yorick	images/687.png
2683	Leona	images/688.png
2684	Galio	images/689.png
2685	Pantheon	images/690.png
2686	Azir	images/691.png
2687	Jayce	images/692.png
2688	Xerath	images/693.png
2689	Ziggs	images/694.png
2690	Nocturne	images/695.png
2691	Katarina	images/696.png
2692	Akali	images/697.png
2693	Azir	images/698.png
2694	LeBlanc	images/699.png
2695	Vayne	images/701.png
2696	Aurelion Sol	images/702.png
2697	Viktor	images/703.png
2698	Nasus	images/704.png
2699	Kled	images/705.png
2700	Gwen	images/706.png
2701	Elise	images/707.png
2702	Volibear	images/708.png
2703	Quinn	images/709.png
2704	Zoe	images/710.png
2705	Renekton	images/711.png
2706	Kennen	images/712.png
2707	Nilah	images/713.png
2708	Graves	images/714.png
2709	Gwen	images/715.png
2710	Nunu & Willump	images/716.png
2711	Rammus	images/717.png
2712	Leona	images/718.png
2713	Sona	images/719.png
2714	Lee Sin	images/720.png
2715	Lee Sin	images/721.png
2716	Nasus	images/722.png
2717	Sion	images/723.png
2718	Morgana	images/724.png
2719	Morgana	images/725.png
2720	Yone	images/726.png
2721	Karma	images/727.png
2722	Viego	images/728.png
2723	Zeri	images/729.png
2724	Viego	images/730.png
2725	Ryze	images/731.png
2726	Sivir	images/732.png
2727	Zoe	images/733.png
2728	Elise	images/734.png
2729	Elise	images/735.png
2730	Elise	images/736.png
2731	Rammus	images/737.png
2732	Draven	images/738.png
2733	Tryndamere	images/739.png
2734	Yone	images/741.png
2735	Nasus	images/742.png
2736	Hecarim	images/743.png
2737	Ahri	images/744.png
2738	Shen	images/745.png
2739	Twitch	images/746.png
2740	Twisted Fate	images/747.png
2741	Seraphine	images/748.png
2742	Nautilus	images/749.png
2743	Draven	images/750.png
2744	Braum	images/751.png
2745	Shen	images/752.png
2746	Soraka	images/753.png
2747	Kayle	images/754.png
2748	Taric	images/755.png
2749	Blitzcrank	images/756.png
2750	Poppy	images/757.png
2751	Yasuo	images/758.png
2752	Wukong	images/760.png
2753	Volibear	images/761.png
2754	Zyra	images/762.png
2755	Zac	images/763.png
2756	Miss Fortune	images/764.png
2757	Trundle	images/768.png
2758	Annie	images/769.png
2759	Leona	images/770.png
2760	Jinx	images/771.png
2761	Kai'Sa	images/772.png
2762	Qiyana	images/773.png
2763	Nami	images/774.png
2764	Seraphine	images/775.png
2765	Yasuo	images/776.png
2766	Nidalee	images/777.png
2767	Lillia	images/778.png
2768	Jinx	images/779.png
2769	Camille	images/780.png
2770	Janna	images/781.png
2771	Nidalee	images/782.png
2772	Neeko	images/783.png
2773	Amumu	images/784.png
2774	Kha'Zix	images/785.png
2775	Vel'Koz	images/786.png
2776	Bard	images/787.png
2777	Lee Sin	images/788.png
2778	Lee Sin	images/789.png
2779	Illaoi	images/790.png
2780	Qiyana	images/791.png
2781	Fiddlesticks	images/792.png
2782	Illaoi	images/793.png
2783	Thresh	images/794.png
2784	Naafiri	images/795.png
2785	Lucian	images/796.png
2786	Aatrox	images/797.png
2787	Kayn	images/798.png
2788	Kayn	images/799.png
2789	Kayn	images/800.png
2790	Rumble	images/801.png
2791	Aphelios	images/802.png
2792	Rakan	images/803.png
2793	Volibear	images/804.png
2794	Sett	images/805.png
2795	Tahm Kench	images/806.png
2796	Gwen	images/807.png
2797	Taliyah	images/808.png
2798	Xin Zhao	images/809.png
2799	Rengar	images/810.png
2800	Malphite	images/811.png
2801	Jayce	images/812.png
2802	Jayce	images/813.png
2803	Kennen	images/814.png
2804	Volibear	images/815.png
2805	Nami	images/816.png
2806	Nami	images/817.png
2807	Vladimir	images/818.png
2808	Zilean	images/819.png
2809	Zilean	images/820.png
2810	Zilean	images/821.png
2811	Ekko	images/822.png
2812	Nautilus	images/823.png
2813	Jayce	images/824.png
2814	Jayce	images/825.png
2815	Tahm Kench	images/826.png
2816	Morgana	images/827.png
2817	Olaf	images/828.png
2818	Teemo	images/829.png
2819	Alistar	images/830.png
2820	Syndra	images/831.png
2821	Vladimir	images/832.png
2822	Bard	images/833.png
2823	Gangplank	images/834.png
2824	Ivern	images/835.png
2825	Alistar	images/836.png
2826	Ezreal	images/837.png
2827	Vayne	images/838.png
2828	Rek'Sai	images/839.png
2829	Shen	images/840.png
2830	Akali	images/841.png
2831	Shyvana	images/842.png
2832	Cassiopeia	images/843.png
2833	Maokai	images/844.png
2834	Shaco	images/845.png
2835	Milio	images/846.png
2836	Zeri	images/847.png
2837	Nocturne	images/848.png
2838	Aatrox	images/849.png
2839	Kayn	images/850.png
2840	Kayn	images/851.png
2841	Kayn	images/852.png
2842	Braum	images/853.png
2843	Alistar	images/854.png
2844	Rek'Sai	images/855.png
2845	Olaf	images/856.png
2846	Tryndamere	images/857.png
2847	Syndra	images/858.png
2848	Taliyah	images/859.png
2849	Rengar	images/860.png
2850	Kha'Zix	images/861.png
2851	Nocturne	images/862.png
2852	Zac	images/863.png
2853	Malphite	images/864.png
2854	Sion	images/865.png
2855	Heimerdinger	images/866.png
2856	Fizz	images/867.png
2857	Corki	images/868.png
2858	Riven	images/869.png
2859	Irelia	images/870.png
2860	Quinn	images/871.png
2861	Vi	images/872.png
2862	Twitch	images/873.png
2863	Elise	images/874.png
2864	Kled	images/875.png
2865	Swain	images/876.png
2866	Kha'Zix	images/877.png
2867	Kog'Maw	images/878.png
2868	Vel'Koz	images/879.png
2869	Rek'Sai	images/880.png
2870	Kai'Sa	images/881.png
2871	Malzahar	images/882.png
2872	Kha'Zix	images/883.png
2873	Kassadin	images/884.png
2874	Bel'Veth	images/885.png
2875	Malzahar	images/886.png
2876	Elise	images/887.png
2877	Elise	images/888.png
2878	Ornn	images/889.png
2879	Ashe	images/890.png
2880	Katarina	images/891.png
2881	Cho'Gath	images/892.png
2882	Camille	images/893.png
2883	Karthus	images/894.png
2884	Gnar	images/895.png
2885	Milio	images/896.png
2886	Hecarim	images/897.png
2887	Wukong	images/898.png
2888	Lillia	images/900.png
2889	Yone	images/901.png
2890	Yasuo	images/902.png
2891	Naafiri	images/903.png
2892	Taliyah	images/904.png
2893	Lulu	images/905.png
2894	Evelynn	images/906.png
2895	Draven	images/907.png
2896	Jhin	images/908.png
2897	Twisted Fate	images/909.png
2898	Lulu	images/910.png
2899	Samira	images/911.png
2900	Udyr	images/912.png
2901	Xin Zhao	images/913.png
2902	Riven	images/914.png
2903	Yasuo	images/915.png
2904	Galio	images/916.png
2905	Udyr	images/917.png
2906	Braum	images/918.png
2907	Sejuani	images/919.png
2908	Soraka	images/920.png
2909	Nasus	images/921.png
2910	Kindred	images/922.png
2911	Aatrox	images/923.png
2912	Master Yi	images/924.png
2913	Caitlyn	images/925.png
2914	Yuumi	images/926.png
2915	Ekko	images/927.png
2916	Jinx	images/928.png
2917	Leona	images/929.png
2918	Janna	images/930.png
2919	Yuumi	images/931.png
3127	Shaco	images/208.png
3128	Darius	images/209.png
3129	Sion	images/210.png
3130	Garen	images/211.png
3131	Rammus	images/212.png
3132	Karma	images/213.png
3133	Irelia	images/214.png
3134	Karthus	images/215.png
3135	Garen	images/216.png
3136	Jarvan IV	images/217.png
3137	Evelynn	images/218.png
3138	Swain	images/219.png
3139	Swain	images/220.png
3140	Vi	images/221.png
3141	Nautilus	images/222.png
3142	Amumu	images/223.png
3143	Twisted Fate	images/224.png
3144	Xin Zhao	images/225.png
3145	Hecarim	images/226.png
3146	Tahm Kench	images/228.png
3147	Akshan	images/229.png
3148	Urgot	images/230.png
3149	Annie	images/231.png
3150	LeBlanc	images/232.png
3151	Kayle	images/233.png
3152	Kayle	images/234.png
3153	Renekton	images/235.png
3154	Vex	images/236.png
3155	Xayah	images/237.png
3156	Master Yi	images/238.png
3157	Miss Fortune	images/239.png
3158	Jarvan IV	images/240.png
3159	Shyvana	images/241.png
3160	Lee Sin	images/242.png
3161	Tristana	images/243.png
3162	Lillia	images/244.png
3163	Nautilus	images/245.png
3164	Gragas	images/246.png
3165	Fiora	images/247.png
3166	Nocturne	images/248.png
3167	Aphelios	images/249.png
3168	Nami	images/250.png
3169	Urgot	images/251.png
3170	Leona	images/252.png
3171	Qiyana	images/253.png
3172	Zac	images/254.png
3173	Kennen	images/255.png
3174	Rumble	images/256.png
3175	Azir	images/257.png
3176	Jax	images/258.png
3177	Rengar	images/259.png
3178	Rengar	images/260.png
3179	Rengar	images/261.png
3180	Evelynn	images/262.png
3181	Ashe	images/263.png
3182	Seraphine	images/264.png
3183	Graves	images/265.png
3184	Bel'Veth	images/266.png
3185	Soraka	images/267.png
3186	Ezreal	images/268.png
3187	Ahri	images/269.png
3188	Warwick	images/270.png
2920	Caitlyn	images/0.png
2921	Fiddlesticks	images/1.png
2922	Sylas	images/2.png
2923	Bel'Veth	images/3.png
2924	Sylas	images/4.png
2925	Sylas	images/5.png
2926	Nunu & Willump	images/6.png
2927	Senna	images/7.png
2928	Tahm Kench	images/8.png
2929	Jayce	images/9.png
2930	Caitlyn	images/10.png
2931	Camille	images/11.png
2932	Pantheon	images/12.png
2933	K'Sante	images/13.png
2934	Evelynn	images/14.png
2935	Master Yi	images/15.png
2936	Twitch	images/16.png
2937	Tahm Kench	images/17.png
2938	Nilah	images/18.png
2939	Darius	images/19.png
2940	Nami	images/20.png
2941	Ryze	images/21.png
2942	Ezreal	images/22.png
2943	Xerath	images/23.png
2944	Sejuani	images/24.png
2945	Lucian	images/25.png
2946	Sona	images/26.png
2947	Azir	images/27.png
2948	Nidalee	images/28.png
2949	Akali	images/29.png
2950	Talon	images/30.png
2951	Aurelion Sol	images/31.png
2952	Soraka	images/32.png
2953	Xin Zhao	images/33.png
2954	Qiyana	images/34.png
2955	Akshan	images/35.png
2956	Shaco	images/36.png
2957	Renata Glasc	images/37.png
2958	Veigar	images/38.png
2959	Amumu	images/39.png
2960	Gragas	images/40.png
2961	Taric	images/41.png
2962	Rakan	images/42.png
2963	Tryndamere	images/43.png
2964	Rengar	images/44.png
2965	Kled	images/45.png
2966	Kled	images/46.png
2967	Seraphine	images/47.png
2968	Quinn	images/48.png
2969	Ornn	images/49.png
2970	Olaf	images/50.png
2971	Nunu & Willump	images/51.png
2972	Aphelios	images/52.png
2973	Kog'Maw	images/53.png
2974	Morgana	images/54.png
2975	Riven	images/55.png
2976	Viego	images/56.png
2977	Samira	images/57.png
2978	Talon	images/58.png
2979	Kayn	images/59.png
2980	Kayn	images/60.png
2981	Kayn	images/61.png
2982	Xayah	images/62.png
2983	Irelia	images/63.png
2984	Fiora	images/64.png
2985	Vi	images/65.png
2986	Brand	images/66.png
2987	Udyr	images/67.png
2988	Varus	images/68.png
2989	Quinn	images/69.png
2990	Teemo	images/70.png
2991	Briar	images/71.png
2992	Warwick	images/72.png
2993	Draven	images/73.png
2994	Tryndamere	images/74.png
2995	Lillia	images/75.png
2996	Neeko	images/76.png
2997	Dr. Mundo	images/77.png
2998	Gragas	images/78.png
2999	Rengar	images/79.png
3000	Pyke	images/80.png
3001	Sivir	images/81.png
3002	Gnar	images/82.png
3003	Gnar	images/83.png
3004	Gnar	images/84.png
3005	Katarina	images/85.png
3006	Ziggs	images/86.png
3007	Fiddlesticks	images/87.png
3008	Maokai	images/88.png
3009	Taric	images/89.png
3010	Rell	images/90.png
3011	Milio	images/91.png
3012	Aurelion Sol	images/92.png
3013	Udyr	images/93.png
3014	Riven	images/94.png
3015	Ivern	images/95.png
3016	Miss Fortune	images/96.png
3017	Shyvana	images/97.png
3018	Rek'Sai	images/98.png
3019	Rek'Sai	images/99.png
1086	Caitlyn	images/0.png
1087	Fiddlesticks	images/1.png
1088	Sylas	images/2.png
1089	Bel'Veth	images/3.png
1090	Sylas	images/4.png
1091	Sylas	images/5.png
1092	Nunu & Willump	images/6.png
1093	Senna	images/7.png
1094	Tahm Kench	images/8.png
1095	Jayce	images/9.png
1096	Caitlyn	images/10.png
1097	Camille	images/11.png
1098	Pantheon	images/12.png
1099	K'Sante	images/13.png
1100	Evelynn	images/14.png
1101	Master Yi	images/15.png
1102	Twitch	images/16.png
1103	Tahm Kench	images/17.png
1104	Nilah	images/18.png
1105	Darius	images/19.png
1106	Nami	images/20.png
1107	Ryze	images/21.png
1108	Ezreal	images/22.png
1109	Xerath	images/23.png
1110	Sejuani	images/24.png
1111	Lucian	images/25.png
1112	Sona	images/26.png
1113	Azir	images/27.png
1114	Nidalee	images/28.png
1115	Akali	images/29.png
1116	Talon	images/30.png
1117	Aurelion Sol	images/31.png
1118	Soraka	images/32.png
1119	Xin Zhao	images/33.png
1120	Qiyana	images/34.png
1121	Akshan	images/35.png
1122	Shaco	images/36.png
1123	Renata Glasc	images/37.png
1124	Veigar	images/38.png
1125	Amumu	images/39.png
1126	Gragas	images/40.png
3020	Zeri	images/100.png
3021	Nidalee	images/101.png
3022	Nidalee	images/102.png
1127	Taric	images/41.png
1128	Rakan	images/42.png
1129	Tryndamere	images/43.png
1130	Rengar	images/44.png
1131	Kled	images/45.png
1132	Kled	images/46.png
1133	Seraphine	images/47.png
1134	Quinn	images/48.png
1135	Ornn	images/49.png
1136	Olaf	images/50.png
1137	Nunu & Willump	images/51.png
1138	Aphelios	images/52.png
1139	Kog'Maw	images/53.png
1140	Morgana	images/54.png
1141	Riven	images/55.png
1142	Viego	images/56.png
1143	Samira	images/57.png
1144	Talon	images/58.png
1145	Kayn	images/59.png
1146	Kayn	images/60.png
1147	Kayn	images/61.png
1148	Xayah	images/62.png
1149	Irelia	images/63.png
1150	Fiora	images/64.png
1151	Vi	images/65.png
1152	Brand	images/66.png
1153	Udyr	images/67.png
1154	Varus	images/68.png
1155	Quinn	images/69.png
1156	Teemo	images/70.png
1157	Briar	images/71.png
1158	Warwick	images/72.png
1159	Draven	images/73.png
1160	Tryndamere	images/74.png
1161	Lillia	images/75.png
1162	Neeko	images/76.png
1163	Dr. Mundo	images/77.png
1164	Gragas	images/78.png
1165	Rengar	images/79.png
1166	Pyke	images/80.png
1167	Sivir	images/81.png
1168	Gnar	images/82.png
1169	Gnar	images/83.png
1170	Gnar	images/84.png
1171	Katarina	images/85.png
1172	Ziggs	images/86.png
1173	Fiddlesticks	images/87.png
1174	Maokai	images/88.png
1175	Taric	images/89.png
1176	Rell	images/90.png
1177	Milio	images/91.png
1178	Aurelion Sol	images/92.png
1179	Udyr	images/93.png
1180	Riven	images/94.png
1181	Ivern	images/95.png
1182	Miss Fortune	images/96.png
1183	Shyvana	images/97.png
1184	Rek'Sai	images/98.png
1185	Rek'Sai	images/99.png
1186	Zeri	images/100.png
1187	Nidalee	images/101.png
1188	Nidalee	images/102.png
1189	Tristana	images/103.png
1190	Aphelios	images/104.png
1191	Ornn	images/105.png
1192	Nunu & Willump	images/106.png
1193	Malzahar	images/107.png
1194	Gangplank	images/108.png
1195	Jhin	images/109.png
1196	Bard	images/110.png
1197	Cho'Gath	images/111.png
1198	Jarvan IV	images/112.png
1199	Kog'Maw	images/113.png
1200	Vi	images/114.png
1201	Kayle	images/115.png
1202	Zac	images/116.png
1203	Briar	images/117.png
1204	Heimerdinger	images/118.png
1205	Heimerdinger	images/119.png
1206	Kled	images/120.png
1207	Sylas	images/121.png
1208	Varus	images/122.png
1209	Viktor	images/123.png
1210	Ahri	images/124.png
1211	Briar	images/125.png
1212	Trundle	images/126.png
1213	Ekko	images/127.png
1214	Zilean	images/128.png
1215	Fizz	images/129.png
1216	Xayah	images/130.png
1217	Orianna	images/131.png
1218	Elise	images/132.png
1219	Elise	images/133.png
1220	Graves	images/134.png
1221	Galio	images/135.png
1222	Pantheon	images/136.png
1223	Akshan	images/137.png
1224	Orianna	images/138.png
1225	Orianna	images/139.png
1226	Orianna	images/140.png
1227	Orianna	images/141.png
1228	Braum	images/142.png
1229	Vayne	images/143.png
1230	Brand	images/144.png
1231	Azir	images/145.png
1232	Nunu & Willump	images/146.png
1233	Twitch	images/147.png
1234	Zed	images/148.png
1235	Urgot	images/149.png
1236	Bard	images/150.png
1237	Aurelion Sol	images/151.png
1238	Taric	images/152.png
1239	Jax	images/153.png
1240	Garen	images/154.png
1241	Milio	images/155.png
1242	Sona	images/156.png
1243	Aphelios	images/157.png
1244	Xin Zhao	images/158.png
1245	Diana	images/159.png
1246	Briar	images/160.png
1247	Vladimir	images/161.png
1248	Lee Sin	images/162.png
1249	Darius	images/163.png
1250	Fiddlesticks	images/164.png
1251	Gnar	images/165.png
1252	Wukong	images/166.png
1253	Skarner	images/168.png
1254	Skarner	images/169.png
1255	Skarner	images/170.png
1256	Anivia	images/171.png
1257	Renekton	images/172.png
1258	Senna	images/173.png
1259	Amumu	images/174.png
1260	Amumu	images/175.png
1261	Jhin	images/176.png
1262	Wukong	images/177.png
1263	Ivern	images/178.png
1264	Thresh	images/179.png
1265	Kindred	images/180.png
1266	Jhin	images/181.png
1267	Samira	images/182.png
1268	Morgana	images/183.png
1269	Veigar	images/184.png
1270	Thresh	images/185.png
1271	Yorick	images/186.png
1272	Syndra	images/187.png
1273	Naafiri	images/188.png
1274	Mordekaiser	images/189.png
1275	K'Sante	images/190.png
1276	Senna	images/191.png
1277	Taric	images/192.png
1278	Jhin	images/193.png
1279	Xayah	images/194.png
1280	Zyra	images/195.png
1281	Twitch	images/196.png
1282	Karthus	images/197.png
1283	Pyke	images/198.png
1284	Bel'Veth	images/199.png
1285	Katarina	images/200.png
1286	Zed	images/201.png
1287	Viktor	images/202.png
1288	Thresh	images/203.png
1289	Sion	images/204.png
1290	Mordekaiser	images/205.png
1291	Swain	images/206.png
1292	Aatrox	images/207.png
1293	Shaco	images/208.png
1294	Darius	images/209.png
1295	Sion	images/210.png
1296	Garen	images/211.png
1297	Rammus	images/212.png
1298	Karma	images/213.png
1299	Irelia	images/214.png
1300	Karthus	images/215.png
1301	Garen	images/216.png
1302	Jarvan IV	images/217.png
1303	Evelynn	images/218.png
1304	Swain	images/219.png
1305	Swain	images/220.png
1306	Vi	images/221.png
1307	Nautilus	images/222.png
1308	Amumu	images/223.png
1309	Twisted Fate	images/224.png
1310	Xin Zhao	images/225.png
1311	Hecarim	images/226.png
1312	Tahm Kench	images/228.png
1313	Akshan	images/229.png
1314	Urgot	images/230.png
1315	Annie	images/231.png
1316	LeBlanc	images/232.png
1317	Kayle	images/233.png
1318	Kayle	images/234.png
1319	Renekton	images/235.png
1320	Vex	images/236.png
1321	Xayah	images/237.png
1322	Master Yi	images/238.png
1323	Miss Fortune	images/239.png
1324	Jarvan IV	images/240.png
1325	Shyvana	images/241.png
1326	Lee Sin	images/242.png
1327	Tristana	images/243.png
1328	Lillia	images/244.png
1329	Nautilus	images/245.png
1330	Gragas	images/246.png
1331	Fiora	images/247.png
1332	Nocturne	images/248.png
1333	Aphelios	images/249.png
1334	Nami	images/250.png
1335	Urgot	images/251.png
1336	Leona	images/252.png
1337	Qiyana	images/253.png
1338	Zac	images/254.png
1339	Kennen	images/255.png
1340	Rumble	images/256.png
1341	Azir	images/257.png
1342	Jax	images/258.png
1343	Rengar	images/259.png
1344	Rengar	images/260.png
1345	Rengar	images/261.png
1346	Evelynn	images/262.png
1347	Ashe	images/263.png
1348	Seraphine	images/264.png
1349	Graves	images/265.png
1350	Bel'Veth	images/266.png
1351	Soraka	images/267.png
1352	Ezreal	images/268.png
1353	Ahri	images/269.png
1354	Warwick	images/270.png
1355	LeBlanc	images/271.png
1356	Yorick	images/272.png
1357	Veigar	images/273.png
1358	Naafiri	images/274.png
1359	Gragas	images/275.png
1360	Tristana	images/276.png
1361	Xerath	images/277.png
1362	Janna	images/278.png
1363	Sett	images/279.png
1364	Aurelion Sol	images/280.png
1365	Yone	images/281.png
1366	Kalista	images/282.png
1367	Urgot	images/283.png
1368	Cho'Gath	images/284.png
1369	Xayah	images/285.png
1370	Yuumi	images/286.png
1371	Cho'Gath	images/287.png
1372	Rell	images/288.png
1373	Rell	images/289.png
1374	Rell	images/290.png
1375	Rakan	images/291.png
1376	Yuumi	images/292.png
1377	Vayne	images/293.png
1378	Lux	images/294.png
1379	Milio	images/295.png
1380	Jinx	images/296.png
1381	Akali	images/297.png
1382	Samira	images/298.png
1383	Shyvana	images/299.png
1384	Jinx	images/300.png
1385	Rumble	images/301.png
1386	Anivia	images/302.png
1387	Irelia	images/303.png
1388	Thresh	images/304.png
1389	Sivir	images/305.png
1390	Singed	images/307.png
1391	Lee Sin	images/308.png
1392	Karma	images/309.png
1393	K'Sante	images/310.png
1394	Syndra	images/311.png
1395	Kassadin	images/312.png
1396	Nilah	images/313.png
1397	Ahri	images/314.png
1398	Skarner	images/315.png
1399	Volibear	images/316.png
1400	Rammus	images/317.png
1401	Ivern	images/318.png
1402	Ashe	images/319.png
1403	Anivia	images/320.png
1404	Trundle	images/321.png
1405	Lissandra	images/322.png
1406	Rell	images/323.png
1407	Rek'Sai	images/324.png
1408	Rek'Sai	images/325.png
1409	Shyvana	images/326.png
1410	Sejuani	images/327.png
1411	Nasus	images/328.png
1412	Rek'Sai	images/329.png
1413	Zyra	images/330.png
1414	Karma	images/331.png
1415	Corki	images/332.png
1416	Jinx	images/334.png
1417	Pyke	images/335.png
1418	Pyke	images/336.png
1419	Braum	images/337.png
1420	Lissandra	images/338.png
1421	Sejuani	images/339.png
1422	Anivia	images/340.png
1423	Rakan	images/341.png
1424	Lulu	images/342.png
1425	Viktor	images/343.png
1426	Sion	images/344.png
1427	Gnar	images/345.png
1428	Dr. Mundo	images/346.png
1429	Akshan	images/347.png
1430	Jarvan IV	images/348.png
1431	Fiora	images/349.png
1432	Rakan	images/350.png
1433	Pantheon	images/351.png
1434	Malphite	images/352.png
1435	Zyra	images/353.png
1436	Aphelios	images/354.png
1437	Viktor	images/355.png
1438	Malphite	images/357.png
1439	Teemo	images/358.png
1440	Heimerdinger	images/359.png
1441	Heimerdinger	images/360.png
1442	Varus	images/361.png
1443	Gwen	images/362.png
1444	Shaco	images/363.png
1445	Poppy	images/364.png
1446	Renata Glasc	images/365.png
1447	Gragas	images/366.png
1448	Quinn	images/367.png
1449	Viego	images/368.png
1450	Illaoi	images/369.png
1451	Evelynn	images/370.png
1452	Ashe	images/371.png
1453	Sett	images/372.png
1454	Briar	images/373.png
1455	Alistar	images/374.png
1456	Caitlyn	images/375.png
1457	Dr. Mundo	images/376.png
1458	Viego	images/377.png
1459	Quinn	images/378.png
1460	Lulu	images/379.png
1461	Vladimir	images/380.png
1462	Darius	images/381.png
1463	Galio	images/382.png
1464	Poppy	images/383.png
1465	Akshan	images/384.png
1466	Ziggs	images/385.png
1467	Heimerdinger	images/386.png
1468	Jayce	images/387.png
1469	Heimerdinger	images/388.png
1470	Corki	images/389.png
1471	Heimerdinger	images/390.png
1472	Camille	images/391.png
1473	Seraphine	images/392.png
1474	Master Yi	images/393.png
1475	Sylas	images/394.png
1476	Camille	images/395.png
1477	Camille	images/396.png
1478	Gnar	images/397.png
1479	Gnar	images/398.png
1480	Renata Glasc	images/399.png
1481	Naafiri	images/400.png
1482	Janna	images/401.png
1483	Elise	images/402.png
1484	Sona	images/403.png
1485	Gnar	images/404.png
1486	Gnar	images/405.png
1487	Jayce	images/406.png
1488	Kai'Sa	images/407.png
1489	Kog'Maw	images/408.png
1490	Lissandra	images/409.png
1491	Lissandra	images/410.png
1492	Lux	images/411.png
1493	Skarner	images/412.png
1494	Annie	images/413.png
1495	Mordekaiser	images/414.png
1496	Dr. Mundo	images/415.png
1497	Aatrox	images/416.png
1498	Samira	images/417.png
1499	Aphelios	images/418.png
1500	Warwick	images/419.png
1501	Neeko	images/420.png
1502	Karma	images/421.png
1503	Singed	images/422.png
1504	Karma	images/423.png
1505	Irelia	images/424.png
1506	Poppy	images/425.png
1507	Udyr	images/426.png
1508	Lee Sin	images/427.png
1509	Shaco	images/428.png
1510	Nidalee	images/429.png
1511	Nidalee	images/430.png
1512	Warwick	images/431.png
1513	Kled	images/432.png
1514	Nilah	images/433.png
1515	Nilah	images/434.png
1516	Garen	images/435.png
1517	Rumble	images/436.png
1518	Galio	images/437.png
1519	Poppy	images/438.png
1520	Shen	images/439.png
1521	Riven	images/440.png
1522	Kai'Sa	images/441.png
1523	Trundle	images/442.png
1524	Sylas	images/443.png
1525	Sett	images/444.png
1526	Kindred	images/445.png
1527	Yasuo	images/446.png
1528	Evelynn	images/447.png
1529	Senna	images/448.png
1530	Yorick	images/449.png
1531	Karthus	images/450.png
1532	Draven	images/451.png
1533	Kha'Zix	images/452.png
1534	Illaoi	images/453.png
1535	Jax	images/454.png
1536	Zac	images/455.png
1537	Renata Glasc	images/456.png
1538	Vel'Koz	images/457.png
1539	Lux	images/458.png
1540	Zeri	images/459.png
1541	Jayce	images/460.png
1542	Jayce	images/461.png
1543	Kennen	images/462.png
1544	Lucian	images/463.png
1545	Lillia	images/464.png
1546	Kog'Maw	images/465.png
1547	Zeri	images/466.png
1548	Ornn	images/467.png
1549	Zed	images/468.png
1550	Varus	images/469.png
1551	Twisted Fate	images/470.png
1552	Vex	images/471.png
1553	Miss Fortune	images/472.png
1554	Rakan	images/473.png
1555	Renata Glasc	images/474.png
1556	Lux	images/475.png
1557	Diana	images/476.png
1558	Fiora	images/477.png
1559	Bard	images/478.png
1560	Rell	images/479.png
1561	Miss Fortune	images/480.png
1562	Malzahar	images/481.png
1563	Blitzcrank	images/482.png
1564	Xerath	images/483.png
1565	Karma	images/484.png
1566	Kindred	images/485.png
1567	Kennen	images/486.png
1568	Jarvan IV	images/487.png
1569	Kalista	images/488.png
1570	Jax	images/489.png
1571	Dr. Mundo	images/490.png
1572	Master Yi	images/491.png
1573	Singed	images/492.png
1574	Ziggs	images/493.png
1575	Jayce	images/494.png
1576	Jayce	images/495.png
1577	Jayce	images/496.png
1578	Cassiopeia	images/497.png
1579	LeBlanc	images/498.png
1580	LeBlanc	images/499.png
1581	LeBlanc	images/500.png
1582	LeBlanc	images/501.png
1583	LeBlanc	images/502.png
1584	Corki	images/503.png
1585	Vex	images/504.png
1586	Tryndamere	images/505.png
1587	Annie	images/507.png
1588	Janna	images/508.png
1589	Diana	images/509.png
1590	Aphelios	images/510.png
1591	Aphelios	images/511.png
1592	Aphelios	images/512.png
1593	Aphelios	images/513.png
1594	Aphelios	images/514.png
1595	Aphelios	images/515.png
1596	Aphelios	images/516.png
1597	Diana	images/517.png
1598	Zoe	images/518.png
1599	Yone	images/519.png
1600	Pantheon	images/520.png
1601	Kindred	images/521.png
1602	Yorick	images/522.png
1603	Teemo	images/523.png
1604	Ezreal	images/524.png
1605	Maokai	images/525.png
1606	Gwen	images/526.png
1607	Kassadin	images/527.png
1608	Malzahar	images/528.png
1609	Elise	images/529.png
1610	Elise	images/530.png
1611	Swain	images/531.png
1612	Graves	images/532.png
1613	Vayne	images/533.png
1614	Fizz	images/534.png
1615	Wukong	images/535.png
1616	Talon	images/536.png
1617	Darius	images/537.png
1618	Darius	images/538.png
1619	Cassiopeia	images/539.png
1620	Singed	images/540.png
1621	Teemo	images/541.png
1622	K'Sante	images/542.png
1623	Kassadin	images/543.png
1624	Mordekaiser	images/544.png
1625	Sivir	images/545.png
1626	Aphelios	images/546.png
1627	Hecarim	images/547.png
1628	Ahri	images/548.png
1629	Vel'Koz	images/549.png
1630	Blitzcrank	images/550.png
1631	Ryze	images/551.png
1632	Zoe	images/552.png
1633	Diana	images/553.png
1634	Ekko	images/554.png
1635	Nocturne	images/555.png
1636	Gangplank	images/556.png
1637	K'Sante	images/557.png
1638	Akali	images/558.png
1639	Sejuani	images/559.png
1640	Garen	images/560.png
1641	Vex	images/561.png
1642	Sylas	images/562.png
1643	Cassiopeia	images/563.png
1644	Pyke	images/564.png
1645	Aphelios	images/565.png
1646	Ekko	images/566.png
1647	Veigar	images/567.png
1648	Corki	images/568.png
1649	Twisted Fate	images/569.png
1650	Kalista	images/570.png
1651	Varus	images/571.png
1652	Senna	images/572.png
1653	Lucian	images/573.png
1654	Brand	images/574.png
1655	Trundle	images/575.png
1656	Caitlyn	images/576.png
1657	Sett	images/577.png
1658	Lulu	images/578.png
1659	Vel'Koz	images/579.png
1660	Fizz	images/580.png
1661	Kled	images/581.png
1662	Singed	images/582.png
1663	Neeko	images/584.png
1664	Zoe	images/585.png
1665	Nidalee	images/586.png
1666	Jinx	images/587.png
1667	Gangplank	images/588.png
1668	Sona	images/589.png
1669	Blitzcrank	images/590.png
1670	Rammus	images/591.png
1671	Camille	images/592.png
1672	Katarina	images/593.png
1673	Rek'Sai	images/594.png
1674	Warwick	images/595.png
1675	Nidalee	images/596.png
1676	Nidalee	images/597.png
1677	Veigar	images/598.png
1678	Lux	images/599.png
1679	Illaoi	images/600.png
1680	Nidalee	images/601.png
1681	Yuumi	images/602.png
1682	Alistar	images/603.png
1683	Urgot	images/604.png
1684	Brand	images/605.png
1685	Annie	images/606.png
1686	Rek'Sai	images/607.png
1687	Rek'Sai	images/608.png
1688	Graves	images/609.png
1689	Kayle	images/610.png
1690	Gnar	images/611.png
1691	Olaf	images/612.png
1692	Talon	images/613.png
1693	Hecarim	images/614.png
1694	Zyra	images/615.png
1695	Ashe	images/616.png
1696	Tristana	images/617.png
1697	Elise	images/618.png
1698	Swain	images/619.png
1699	Zed	images/620.png
1700	Mordekaiser	images/621.png
1701	Ryze	images/622.png
1702	Fiddlesticks	images/623.png
1703	Kayn	images/624.png
1704	Kayn	images/625.png
1705	Kayn	images/626.png
1706	Anivia	images/627.png
1707	Olaf	images/628.png
1708	Renekton	images/629.png
1709	Jax	images/630.png
1710	Vi	images/631.png
1711	Lucian	images/632.png
1712	Gangplank	images/633.png
1713	Kalista	images/634.png
1714	Karma	images/635.png
1715	Karthus	images/636.png
1716	Lee Sin	images/637.png
1717	Zilean	images/638.png
1718	Sivir	images/639.png
1719	Kassadin	images/640.png
1720	Lissandra	images/641.png
1721	Fiora	images/642.png
1722	Nautilus	images/643.png
1723	Ezreal	images/644.png
1724	Xerath	images/645.png
1725	Sion	images/646.png
1726	Taliyah	images/647.png
1727	Blitzcrank	images/648.png
1728	Tristana	images/649.png
1729	Ivern	images/650.png
1730	Bel'Veth	images/651.png
1731	Qiyana	images/652.png
1732	Ryze	images/653.png
1733	Riven	images/654.png
1734	Cho'Gath	images/655.png
1735	Renekton	images/656.png
1736	Lee Sin	images/657.png
1737	Lee Sin	images/658.png
1738	Soraka	images/659.png
1739	Vladimir	images/660.png
1740	Maokai	images/661.png
1741	Maokai	images/662.png
1742	Ziggs	images/663.png
1743	Rengar	images/664.png
1744	Syndra	images/665.png
1745	Rumble	images/666.png
1746	Brand	images/667.png
1747	Ornn	images/668.png
1748	Fizz	images/669.png
1749	Kai'Sa	images/670.png
1750	Malphite	images/671.png
1751	Taliyah	images/672.png
1752	Kalista	images/673.png
1753	Aphelios	images/674.png
1754	Cassiopeia	images/675.png
1755	Aphelios	images/677.png
1756	Talon	images/678.png
1757	Shen	images/679.png
1758	Zed	images/680.png
1759	Kayn	images/681.png
1760	Kayn	images/682.png
1761	Kayn	images/683.png
1762	Vex	images/684.png
1763	Neeko	images/685.png
1764	Rell	images/686.png
1765	Yorick	images/687.png
1766	Leona	images/688.png
1767	Galio	images/689.png
1768	Pantheon	images/690.png
1769	Azir	images/691.png
1770	Jayce	images/692.png
1771	Xerath	images/693.png
1772	Ziggs	images/694.png
1773	Nocturne	images/695.png
1774	Katarina	images/696.png
1775	Akali	images/697.png
1776	Azir	images/698.png
1777	LeBlanc	images/699.png
1778	Vayne	images/701.png
1779	Aurelion Sol	images/702.png
1780	Viktor	images/703.png
1781	Nasus	images/704.png
1782	Kled	images/705.png
1783	Gwen	images/706.png
1784	Elise	images/707.png
1785	Volibear	images/708.png
1786	Quinn	images/709.png
1787	Zoe	images/710.png
1788	Renekton	images/711.png
1789	Kennen	images/712.png
1790	Nilah	images/713.png
1791	Graves	images/714.png
1792	Gwen	images/715.png
1793	Nunu & Willump	images/716.png
1794	Rammus	images/717.png
1795	Leona	images/718.png
1796	Sona	images/719.png
1797	Lee Sin	images/720.png
1798	Lee Sin	images/721.png
1799	Nasus	images/722.png
1800	Sion	images/723.png
1801	Morgana	images/724.png
1802	Morgana	images/725.png
1803	Yone	images/726.png
1804	Karma	images/727.png
1805	Viego	images/728.png
1806	Zeri	images/729.png
1807	Viego	images/730.png
1808	Ryze	images/731.png
1809	Sivir	images/732.png
1810	Zoe	images/733.png
1811	Elise	images/734.png
1812	Elise	images/735.png
1813	Elise	images/736.png
1814	Rammus	images/737.png
1815	Draven	images/738.png
1816	Tryndamere	images/739.png
1817	Yone	images/741.png
1818	Nasus	images/742.png
1819	Hecarim	images/743.png
1820	Ahri	images/744.png
1821	Shen	images/745.png
1822	Twitch	images/746.png
1823	Twisted Fate	images/747.png
1824	Seraphine	images/748.png
1825	Nautilus	images/749.png
1826	Draven	images/750.png
1827	Braum	images/751.png
1828	Shen	images/752.png
1829	Soraka	images/753.png
1830	Kayle	images/754.png
1831	Taric	images/755.png
1832	Blitzcrank	images/756.png
1833	Poppy	images/757.png
1834	Yasuo	images/758.png
1835	Wukong	images/760.png
1836	Volibear	images/761.png
1837	Zyra	images/762.png
1838	Zac	images/763.png
1839	Miss Fortune	images/764.png
1840	Trundle	images/768.png
1841	Annie	images/769.png
1842	Leona	images/770.png
1843	Jinx	images/771.png
1844	Kai'Sa	images/772.png
1845	Qiyana	images/773.png
1846	Nami	images/774.png
1847	Seraphine	images/775.png
1848	Yasuo	images/776.png
1849	Nidalee	images/777.png
1850	Lillia	images/778.png
1851	Jinx	images/779.png
1852	Camille	images/780.png
1853	Janna	images/781.png
1854	Nidalee	images/782.png
1855	Neeko	images/783.png
1856	Amumu	images/784.png
1857	Kha'Zix	images/785.png
1858	Vel'Koz	images/786.png
1859	Bard	images/787.png
1860	Lee Sin	images/788.png
1861	Lee Sin	images/789.png
1862	Illaoi	images/790.png
1863	Qiyana	images/791.png
1864	Fiddlesticks	images/792.png
1865	Illaoi	images/793.png
1866	Thresh	images/794.png
1867	Naafiri	images/795.png
1868	Lucian	images/796.png
1869	Aatrox	images/797.png
1870	Kayn	images/798.png
1871	Kayn	images/799.png
1872	Kayn	images/800.png
1873	Rumble	images/801.png
1874	Aphelios	images/802.png
1875	Rakan	images/803.png
1876	Volibear	images/804.png
1877	Sett	images/805.png
1878	Tahm Kench	images/806.png
1879	Gwen	images/807.png
1880	Taliyah	images/808.png
1881	Xin Zhao	images/809.png
1882	Rengar	images/810.png
1883	Malphite	images/811.png
1884	Jayce	images/812.png
1885	Jayce	images/813.png
1886	Kennen	images/814.png
1887	Volibear	images/815.png
1888	Nami	images/816.png
1889	Nami	images/817.png
1890	Vladimir	images/818.png
1891	Zilean	images/819.png
1892	Zilean	images/820.png
1893	Zilean	images/821.png
1894	Ekko	images/822.png
1895	Nautilus	images/823.png
1896	Jayce	images/824.png
1897	Jayce	images/825.png
1898	Tahm Kench	images/826.png
1899	Morgana	images/827.png
1900	Olaf	images/828.png
1901	Teemo	images/829.png
1902	Alistar	images/830.png
1903	Syndra	images/831.png
1904	Vladimir	images/832.png
1905	Bard	images/833.png
1906	Gangplank	images/834.png
1907	Ivern	images/835.png
1908	Alistar	images/836.png
1909	Ezreal	images/837.png
1910	Vayne	images/838.png
1911	Rek'Sai	images/839.png
1912	Shen	images/840.png
1913	Akali	images/841.png
1914	Shyvana	images/842.png
1915	Cassiopeia	images/843.png
1916	Maokai	images/844.png
1917	Shaco	images/845.png
1918	Milio	images/846.png
1919	Zeri	images/847.png
1920	Nocturne	images/848.png
1921	Aatrox	images/849.png
1922	Kayn	images/850.png
1923	Kayn	images/851.png
1924	Kayn	images/852.png
1925	Braum	images/853.png
1926	Alistar	images/854.png
1927	Rek'Sai	images/855.png
1928	Olaf	images/856.png
1929	Tryndamere	images/857.png
1930	Syndra	images/858.png
1931	Taliyah	images/859.png
1932	Rengar	images/860.png
1933	Kha'Zix	images/861.png
1934	Nocturne	images/862.png
1935	Zac	images/863.png
1936	Malphite	images/864.png
1937	Sion	images/865.png
1938	Heimerdinger	images/866.png
1939	Fizz	images/867.png
1940	Corki	images/868.png
1941	Riven	images/869.png
1942	Irelia	images/870.png
1943	Quinn	images/871.png
1944	Vi	images/872.png
1945	Twitch	images/873.png
1946	Elise	images/874.png
1947	Kled	images/875.png
1948	Swain	images/876.png
1949	Kha'Zix	images/877.png
1950	Kog'Maw	images/878.png
1951	Vel'Koz	images/879.png
1952	Rek'Sai	images/880.png
1953	Kai'Sa	images/881.png
1954	Malzahar	images/882.png
1955	Kha'Zix	images/883.png
1956	Kassadin	images/884.png
1957	Bel'Veth	images/885.png
1958	Malzahar	images/886.png
1959	Elise	images/887.png
1960	Elise	images/888.png
1961	Ornn	images/889.png
1962	Ashe	images/890.png
1963	Katarina	images/891.png
1964	Cho'Gath	images/892.png
1965	Camille	images/893.png
1966	Karthus	images/894.png
1967	Gnar	images/895.png
1968	Milio	images/896.png
1969	Hecarim	images/897.png
1970	Wukong	images/898.png
1971	Lillia	images/900.png
1972	Yone	images/901.png
1973	Yasuo	images/902.png
1974	Naafiri	images/903.png
1975	Taliyah	images/904.png
1976	Lulu	images/905.png
1977	Evelynn	images/906.png
1978	Draven	images/907.png
1979	Jhin	images/908.png
1980	Twisted Fate	images/909.png
1981	Lulu	images/910.png
1982	Samira	images/911.png
1983	Udyr	images/912.png
1984	Xin Zhao	images/913.png
1985	Riven	images/914.png
1986	Yasuo	images/915.png
1987	Galio	images/916.png
1988	Udyr	images/917.png
1989	Braum	images/918.png
1990	Sejuani	images/919.png
1991	Soraka	images/920.png
1992	Nasus	images/921.png
1993	Kindred	images/922.png
1994	Aatrox	images/923.png
1995	Master Yi	images/924.png
1996	Caitlyn	images/925.png
1997	Yuumi	images/926.png
1998	Ekko	images/927.png
1999	Jinx	images/928.png
2000	Leona	images/929.png
2001	Janna	images/930.png
2002	Yuumi	images/931.png
3023	Tristana	images/103.png
3024	Aphelios	images/104.png
3025	Ornn	images/105.png
3026	Nunu & Willump	images/106.png
3027	Malzahar	images/107.png
3028	Gangplank	images/108.png
3029	Jhin	images/109.png
3030	Bard	images/110.png
3031	Cho'Gath	images/111.png
3032	Jarvan IV	images/112.png
3033	Kog'Maw	images/113.png
3034	Vi	images/114.png
3035	Kayle	images/115.png
3036	Zac	images/116.png
3037	Briar	images/117.png
3038	Heimerdinger	images/118.png
3039	Heimerdinger	images/119.png
3040	Kled	images/120.png
3041	Sylas	images/121.png
3042	Varus	images/122.png
3043	Viktor	images/123.png
3044	Ahri	images/124.png
3045	Briar	images/125.png
3046	Trundle	images/126.png
3047	Ekko	images/127.png
3048	Zilean	images/128.png
3049	Fizz	images/129.png
3050	Xayah	images/130.png
3051	Orianna	images/131.png
3052	Elise	images/132.png
3053	Elise	images/133.png
3054	Graves	images/134.png
3055	Galio	images/135.png
3056	Pantheon	images/136.png
3057	Akshan	images/137.png
3058	Orianna	images/138.png
3059	Orianna	images/139.png
3060	Orianna	images/140.png
3061	Orianna	images/141.png
3062	Braum	images/142.png
3063	Vayne	images/143.png
3064	Brand	images/144.png
3065	Azir	images/145.png
3066	Nunu & Willump	images/146.png
3067	Twitch	images/147.png
3068	Zed	images/148.png
3069	Urgot	images/149.png
3070	Bard	images/150.png
3071	Aurelion Sol	images/151.png
3072	Taric	images/152.png
3073	Jax	images/153.png
3074	Garen	images/154.png
3075	Milio	images/155.png
3076	Sona	images/156.png
3077	Aphelios	images/157.png
3078	Xin Zhao	images/158.png
3079	Diana	images/159.png
3080	Briar	images/160.png
3081	Vladimir	images/161.png
3082	Lee Sin	images/162.png
3083	Darius	images/163.png
3084	Fiddlesticks	images/164.png
3085	Gnar	images/165.png
3086	Wukong	images/166.png
3087	Skarner	images/168.png
3088	Skarner	images/169.png
3089	Skarner	images/170.png
3090	Anivia	images/171.png
3091	Renekton	images/172.png
3092	Senna	images/173.png
3093	Amumu	images/174.png
3094	Amumu	images/175.png
3095	Jhin	images/176.png
3096	Wukong	images/177.png
3097	Ivern	images/178.png
3098	Thresh	images/179.png
3099	Kindred	images/180.png
3100	Jhin	images/181.png
3101	Samira	images/182.png
3102	Morgana	images/183.png
3103	Veigar	images/184.png
3104	Thresh	images/185.png
3105	Yorick	images/186.png
3106	Syndra	images/187.png
3107	Naafiri	images/188.png
3108	Mordekaiser	images/189.png
3109	K'Sante	images/190.png
3110	Senna	images/191.png
3111	Taric	images/192.png
3112	Jhin	images/193.png
3113	Xayah	images/194.png
3114	Zyra	images/195.png
3115	Twitch	images/196.png
3116	Karthus	images/197.png
3117	Pyke	images/198.png
3118	Bel'Veth	images/199.png
3119	Katarina	images/200.png
3120	Zed	images/201.png
3121	Viktor	images/202.png
3122	Thresh	images/203.png
3123	Sion	images/204.png
3124	Mordekaiser	images/205.png
3125	Swain	images/206.png
3126	Aatrox	images/207.png
3189	LeBlanc	images/271.png
3190	Yorick	images/272.png
3191	Veigar	images/273.png
3192	Naafiri	images/274.png
3193	Gragas	images/275.png
3194	Tristana	images/276.png
3195	Xerath	images/277.png
3196	Janna	images/278.png
3197	Sett	images/279.png
3198	Aurelion Sol	images/280.png
3199	Yone	images/281.png
3200	Kalista	images/282.png
3201	Urgot	images/283.png
3202	Cho'Gath	images/284.png
3203	Xayah	images/285.png
3204	Yuumi	images/286.png
3205	Cho'Gath	images/287.png
3206	Rell	images/288.png
3207	Rell	images/289.png
3208	Rell	images/290.png
3209	Rakan	images/291.png
3210	Yuumi	images/292.png
3211	Vayne	images/293.png
3212	Lux	images/294.png
3213	Milio	images/295.png
3214	Jinx	images/296.png
3215	Akali	images/297.png
3216	Samira	images/298.png
3217	Shyvana	images/299.png
3218	Jinx	images/300.png
3219	Rumble	images/301.png
3220	Anivia	images/302.png
3221	Irelia	images/303.png
3222	Thresh	images/304.png
3223	Sivir	images/305.png
3224	Singed	images/307.png
3225	Lee Sin	images/308.png
3226	Karma	images/309.png
3227	K'Sante	images/310.png
3228	Syndra	images/311.png
3229	Kassadin	images/312.png
3230	Nilah	images/313.png
3231	Ahri	images/314.png
3232	Skarner	images/315.png
3233	Volibear	images/316.png
3234	Rammus	images/317.png
3235	Ivern	images/318.png
3236	Ashe	images/319.png
3237	Anivia	images/320.png
3238	Trundle	images/321.png
3239	Lissandra	images/322.png
3240	Rell	images/323.png
3241	Rek'Sai	images/324.png
3242	Rek'Sai	images/325.png
3243	Shyvana	images/326.png
3244	Sejuani	images/327.png
3245	Nasus	images/328.png
3246	Rek'Sai	images/329.png
3247	Zyra	images/330.png
3248	Karma	images/331.png
3249	Corki	images/332.png
3250	Jinx	images/334.png
3251	Pyke	images/335.png
3252	Pyke	images/336.png
3253	Braum	images/337.png
3254	Lissandra	images/338.png
3255	Sejuani	images/339.png
3256	Anivia	images/340.png
3257	Rakan	images/341.png
3258	Lulu	images/342.png
3259	Viktor	images/343.png
3260	Sion	images/344.png
3261	Gnar	images/345.png
3262	Dr. Mundo	images/346.png
3263	Akshan	images/347.png
3264	Jarvan IV	images/348.png
3265	Fiora	images/349.png
3266	Rakan	images/350.png
3267	Pantheon	images/351.png
3268	Malphite	images/352.png
3269	Zyra	images/353.png
3270	Aphelios	images/354.png
3271	Viktor	images/355.png
3272	Malphite	images/357.png
3273	Teemo	images/358.png
3274	Heimerdinger	images/359.png
3275	Heimerdinger	images/360.png
3276	Varus	images/361.png
3277	Gwen	images/362.png
3278	Shaco	images/363.png
3279	Poppy	images/364.png
3280	Renata Glasc	images/365.png
3281	Gragas	images/366.png
3282	Quinn	images/367.png
3283	Viego	images/368.png
3284	Illaoi	images/369.png
3285	Evelynn	images/370.png
3286	Ashe	images/371.png
3287	Sett	images/372.png
3288	Briar	images/373.png
3289	Alistar	images/374.png
3290	Caitlyn	images/375.png
3291	Dr. Mundo	images/376.png
3292	Viego	images/377.png
3293	Quinn	images/378.png
3294	Lulu	images/379.png
3295	Vladimir	images/380.png
3296	Darius	images/381.png
3297	Galio	images/382.png
3298	Poppy	images/383.png
3299	Akshan	images/384.png
3300	Ziggs	images/385.png
3301	Heimerdinger	images/386.png
3302	Jayce	images/387.png
3303	Heimerdinger	images/388.png
3304	Corki	images/389.png
3305	Heimerdinger	images/390.png
3306	Camille	images/391.png
3307	Seraphine	images/392.png
3308	Master Yi	images/393.png
3309	Sylas	images/394.png
3310	Camille	images/395.png
3311	Camille	images/396.png
3312	Gnar	images/397.png
3313	Gnar	images/398.png
3314	Renata Glasc	images/399.png
3315	Naafiri	images/400.png
3316	Janna	images/401.png
3317	Elise	images/402.png
3318	Sona	images/403.png
3319	Gnar	images/404.png
3320	Gnar	images/405.png
3321	Jayce	images/406.png
3322	Kai'Sa	images/407.png
3323	Kog'Maw	images/408.png
3324	Lissandra	images/409.png
3325	Lissandra	images/410.png
3326	Lux	images/411.png
3327	Skarner	images/412.png
3328	Annie	images/413.png
3329	Mordekaiser	images/414.png
3330	Dr. Mundo	images/415.png
3331	Aatrox	images/416.png
3332	Samira	images/417.png
3333	Aphelios	images/418.png
3334	Warwick	images/419.png
3335	Neeko	images/420.png
3336	Karma	images/421.png
3337	Singed	images/422.png
3338	Karma	images/423.png
3339	Irelia	images/424.png
3340	Poppy	images/425.png
3341	Udyr	images/426.png
3342	Lee Sin	images/427.png
3343	Shaco	images/428.png
3344	Nidalee	images/429.png
3345	Nidalee	images/430.png
3346	Warwick	images/431.png
3347	Kled	images/432.png
3348	Nilah	images/433.png
3349	Nilah	images/434.png
3350	Garen	images/435.png
3351	Rumble	images/436.png
3352	Galio	images/437.png
3353	Poppy	images/438.png
3354	Shen	images/439.png
3355	Riven	images/440.png
3356	Kai'Sa	images/441.png
3357	Trundle	images/442.png
3358	Sylas	images/443.png
3359	Sett	images/444.png
3360	Kindred	images/445.png
3361	Yasuo	images/446.png
3362	Evelynn	images/447.png
3363	Senna	images/448.png
3364	Yorick	images/449.png
3365	Karthus	images/450.png
3366	Draven	images/451.png
3367	Kha'Zix	images/452.png
3368	Illaoi	images/453.png
3369	Jax	images/454.png
3370	Zac	images/455.png
3371	Renata Glasc	images/456.png
3372	Vel'Koz	images/457.png
3373	Lux	images/458.png
3374	Zeri	images/459.png
3375	Jayce	images/460.png
3376	Jayce	images/461.png
3377	Kennen	images/462.png
3378	Lucian	images/463.png
3379	Lillia	images/464.png
3380	Kog'Maw	images/465.png
3381	Zeri	images/466.png
3382	Ornn	images/467.png
3383	Zed	images/468.png
3384	Varus	images/469.png
3385	Twisted Fate	images/470.png
3386	Vex	images/471.png
3387	Miss Fortune	images/472.png
3388	Rakan	images/473.png
3389	Renata Glasc	images/474.png
3390	Lux	images/475.png
3391	Diana	images/476.png
3392	Fiora	images/477.png
3393	Bard	images/478.png
3394	Rell	images/479.png
3395	Miss Fortune	images/480.png
3396	Malzahar	images/481.png
3397	Blitzcrank	images/482.png
3398	Xerath	images/483.png
3399	Karma	images/484.png
3400	Kindred	images/485.png
3401	Kennen	images/486.png
3402	Jarvan IV	images/487.png
3403	Kalista	images/488.png
3404	Jax	images/489.png
3405	Dr. Mundo	images/490.png
3406	Master Yi	images/491.png
3407	Singed	images/492.png
3408	Ziggs	images/493.png
3409	Jayce	images/494.png
3410	Jayce	images/495.png
3411	Jayce	images/496.png
3412	Cassiopeia	images/497.png
3413	LeBlanc	images/498.png
3414	LeBlanc	images/499.png
3415	LeBlanc	images/500.png
3416	LeBlanc	images/501.png
3417	LeBlanc	images/502.png
3418	Corki	images/503.png
3419	Vex	images/504.png
3420	Tryndamere	images/505.png
3421	Annie	images/507.png
3422	Janna	images/508.png
3423	Diana	images/509.png
3424	Aphelios	images/510.png
3425	Aphelios	images/511.png
3426	Aphelios	images/512.png
3427	Aphelios	images/513.png
3428	Aphelios	images/514.png
3429	Aphelios	images/515.png
3430	Aphelios	images/516.png
3431	Diana	images/517.png
3432	Zoe	images/518.png
3433	Yone	images/519.png
3434	Pantheon	images/520.png
3435	Kindred	images/521.png
3436	Yorick	images/522.png
3437	Teemo	images/523.png
3438	Ezreal	images/524.png
3439	Maokai	images/525.png
3440	Gwen	images/526.png
3441	Kassadin	images/527.png
3442	Malzahar	images/528.png
3443	Elise	images/529.png
3444	Elise	images/530.png
3445	Swain	images/531.png
3446	Graves	images/532.png
3447	Vayne	images/533.png
3448	Fizz	images/534.png
3449	Wukong	images/535.png
3450	Talon	images/536.png
3451	Darius	images/537.png
3452	Darius	images/538.png
3453	Cassiopeia	images/539.png
3454	Singed	images/540.png
3455	Teemo	images/541.png
3456	K'Sante	images/542.png
3457	Kassadin	images/543.png
3458	Mordekaiser	images/544.png
3459	Sivir	images/545.png
3460	Aphelios	images/546.png
3461	Hecarim	images/547.png
3462	Ahri	images/548.png
3463	Vel'Koz	images/549.png
3464	Blitzcrank	images/550.png
3465	Ryze	images/551.png
3466	Zoe	images/552.png
3467	Diana	images/553.png
3468	Ekko	images/554.png
3469	Nocturne	images/555.png
3470	Gangplank	images/556.png
3471	K'Sante	images/557.png
3472	Akali	images/558.png
3473	Sejuani	images/559.png
3474	Garen	images/560.png
3475	Vex	images/561.png
3476	Sylas	images/562.png
3477	Cassiopeia	images/563.png
3478	Pyke	images/564.png
3479	Aphelios	images/565.png
3480	Ekko	images/566.png
3481	Veigar	images/567.png
3482	Corki	images/568.png
3483	Twisted Fate	images/569.png
3484	Kalista	images/570.png
3485	Varus	images/571.png
3486	Senna	images/572.png
3487	Lucian	images/573.png
3488	Brand	images/574.png
3489	Trundle	images/575.png
3490	Caitlyn	images/576.png
3491	Sett	images/577.png
3492	Lulu	images/578.png
3493	Vel'Koz	images/579.png
3494	Fizz	images/580.png
3495	Kled	images/581.png
3496	Singed	images/582.png
3497	Neeko	images/584.png
3498	Zoe	images/585.png
3499	Nidalee	images/586.png
3500	Jinx	images/587.png
3501	Gangplank	images/588.png
3502	Sona	images/589.png
3503	Blitzcrank	images/590.png
3504	Rammus	images/591.png
3505	Camille	images/592.png
3506	Katarina	images/593.png
3507	Rek'Sai	images/594.png
3508	Warwick	images/595.png
3509	Nidalee	images/596.png
3510	Nidalee	images/597.png
3511	Veigar	images/598.png
3512	Lux	images/599.png
3513	Illaoi	images/600.png
3514	Nidalee	images/601.png
3515	Yuumi	images/602.png
3516	Alistar	images/603.png
3517	Urgot	images/604.png
3518	Brand	images/605.png
3519	Annie	images/606.png
3520	Rek'Sai	images/607.png
3521	Rek'Sai	images/608.png
3522	Graves	images/609.png
3523	Kayle	images/610.png
3524	Gnar	images/611.png
3525	Olaf	images/612.png
3526	Talon	images/613.png
3527	Hecarim	images/614.png
3528	Zyra	images/615.png
3529	Ashe	images/616.png
3530	Tristana	images/617.png
3531	Elise	images/618.png
3532	Swain	images/619.png
3533	Zed	images/620.png
3534	Mordekaiser	images/621.png
3535	Ryze	images/622.png
3536	Fiddlesticks	images/623.png
3537	Kayn	images/624.png
3538	Kayn	images/625.png
3539	Kayn	images/626.png
3540	Anivia	images/627.png
3541	Olaf	images/628.png
3542	Renekton	images/629.png
3543	Jax	images/630.png
3544	Vi	images/631.png
3545	Lucian	images/632.png
3546	Gangplank	images/633.png
3547	Kalista	images/634.png
3548	Karma	images/635.png
3549	Karthus	images/636.png
3550	Lee Sin	images/637.png
3551	Zilean	images/638.png
3552	Sivir	images/639.png
3553	Kassadin	images/640.png
3554	Lissandra	images/641.png
3555	Fiora	images/642.png
3556	Nautilus	images/643.png
3557	Ezreal	images/644.png
3558	Xerath	images/645.png
3559	Sion	images/646.png
3560	Taliyah	images/647.png
3561	Blitzcrank	images/648.png
3562	Tristana	images/649.png
3563	Ivern	images/650.png
3564	Bel'Veth	images/651.png
3565	Qiyana	images/652.png
3566	Ryze	images/653.png
3567	Riven	images/654.png
3568	Cho'Gath	images/655.png
3569	Renekton	images/656.png
3570	Lee Sin	images/657.png
3571	Lee Sin	images/658.png
3572	Soraka	images/659.png
3573	Vladimir	images/660.png
3574	Maokai	images/661.png
3575	Maokai	images/662.png
3576	Ziggs	images/663.png
3577	Rengar	images/664.png
3578	Syndra	images/665.png
3579	Rumble	images/666.png
3580	Brand	images/667.png
3581	Ornn	images/668.png
3582	Fizz	images/669.png
3583	Kai'Sa	images/670.png
3584	Malphite	images/671.png
3585	Taliyah	images/672.png
3586	Kalista	images/673.png
3587	Aphelios	images/674.png
3588	Cassiopeia	images/675.png
3589	Aphelios	images/677.png
3590	Talon	images/678.png
3591	Shen	images/679.png
3592	Zed	images/680.png
3593	Kayn	images/681.png
3594	Kayn	images/682.png
3595	Kayn	images/683.png
3596	Vex	images/684.png
3597	Neeko	images/685.png
3598	Rell	images/686.png
3599	Yorick	images/687.png
3600	Leona	images/688.png
3601	Galio	images/689.png
3602	Pantheon	images/690.png
3603	Azir	images/691.png
3604	Jayce	images/692.png
3605	Xerath	images/693.png
3606	Ziggs	images/694.png
3607	Nocturne	images/695.png
3608	Katarina	images/696.png
3609	Akali	images/697.png
3610	Azir	images/698.png
3611	LeBlanc	images/699.png
3612	Vayne	images/701.png
3613	Aurelion Sol	images/702.png
3614	Viktor	images/703.png
3615	Nasus	images/704.png
3616	Kled	images/705.png
3617	Gwen	images/706.png
3618	Elise	images/707.png
3619	Volibear	images/708.png
3620	Quinn	images/709.png
3621	Zoe	images/710.png
3622	Renekton	images/711.png
3623	Kennen	images/712.png
3624	Nilah	images/713.png
3625	Graves	images/714.png
3626	Gwen	images/715.png
3627	Nunu & Willump	images/716.png
3628	Rammus	images/717.png
3629	Leona	images/718.png
3630	Sona	images/719.png
3631	Lee Sin	images/720.png
3632	Lee Sin	images/721.png
3633	Nasus	images/722.png
3634	Sion	images/723.png
3635	Morgana	images/724.png
3636	Morgana	images/725.png
3637	Yone	images/726.png
3638	Karma	images/727.png
3639	Viego	images/728.png
3640	Zeri	images/729.png
3641	Viego	images/730.png
3642	Ryze	images/731.png
3643	Sivir	images/732.png
3644	Zoe	images/733.png
3645	Elise	images/734.png
3646	Elise	images/735.png
3647	Elise	images/736.png
3648	Rammus	images/737.png
3649	Draven	images/738.png
3650	Tryndamere	images/739.png
3651	Yone	images/741.png
3652	Nasus	images/742.png
3653	Hecarim	images/743.png
3654	Ahri	images/744.png
3655	Shen	images/745.png
3656	Twitch	images/746.png
3657	Twisted Fate	images/747.png
3658	Seraphine	images/748.png
3659	Nautilus	images/749.png
3660	Draven	images/750.png
3661	Braum	images/751.png
3662	Shen	images/752.png
3663	Soraka	images/753.png
3664	Kayle	images/754.png
3665	Taric	images/755.png
3666	Blitzcrank	images/756.png
3667	Poppy	images/757.png
3668	Yasuo	images/758.png
3669	Wukong	images/760.png
3670	Volibear	images/761.png
3671	Zyra	images/762.png
3672	Zac	images/763.png
3673	Miss Fortune	images/764.png
3674	Trundle	images/768.png
3675	Annie	images/769.png
3676	Leona	images/770.png
3677	Jinx	images/771.png
3678	Kai'Sa	images/772.png
3679	Qiyana	images/773.png
3680	Nami	images/774.png
3681	Seraphine	images/775.png
3682	Yasuo	images/776.png
3683	Nidalee	images/777.png
3684	Lillia	images/778.png
3685	Jinx	images/779.png
3686	Camille	images/780.png
3687	Janna	images/781.png
3688	Nidalee	images/782.png
3689	Neeko	images/783.png
3690	Amumu	images/784.png
3691	Kha'Zix	images/785.png
3692	Vel'Koz	images/786.png
3693	Bard	images/787.png
3694	Lee Sin	images/788.png
3695	Lee Sin	images/789.png
3696	Illaoi	images/790.png
3697	Qiyana	images/791.png
3698	Fiddlesticks	images/792.png
3699	Illaoi	images/793.png
3700	Thresh	images/794.png
3701	Naafiri	images/795.png
3702	Lucian	images/796.png
3703	Aatrox	images/797.png
3704	Kayn	images/798.png
3705	Kayn	images/799.png
3706	Kayn	images/800.png
3707	Rumble	images/801.png
3708	Aphelios	images/802.png
3709	Rakan	images/803.png
3710	Volibear	images/804.png
3711	Sett	images/805.png
3712	Tahm Kench	images/806.png
3713	Gwen	images/807.png
3714	Taliyah	images/808.png
3715	Xin Zhao	images/809.png
3716	Rengar	images/810.png
3717	Malphite	images/811.png
3718	Jayce	images/812.png
3719	Jayce	images/813.png
3720	Kennen	images/814.png
3721	Volibear	images/815.png
3722	Nami	images/816.png
3723	Nami	images/817.png
3724	Vladimir	images/818.png
3725	Zilean	images/819.png
3726	Zilean	images/820.png
3727	Zilean	images/821.png
3728	Ekko	images/822.png
3729	Nautilus	images/823.png
3730	Jayce	images/824.png
3731	Jayce	images/825.png
3732	Tahm Kench	images/826.png
3733	Morgana	images/827.png
3734	Olaf	images/828.png
3735	Teemo	images/829.png
3736	Alistar	images/830.png
3737	Syndra	images/831.png
3738	Vladimir	images/832.png
3739	Bard	images/833.png
3740	Gangplank	images/834.png
3741	Ivern	images/835.png
3742	Alistar	images/836.png
3743	Ezreal	images/837.png
3744	Vayne	images/838.png
3745	Rek'Sai	images/839.png
3746	Shen	images/840.png
3747	Akali	images/841.png
3748	Shyvana	images/842.png
3749	Cassiopeia	images/843.png
3750	Maokai	images/844.png
3751	Shaco	images/845.png
3752	Milio	images/846.png
3753	Zeri	images/847.png
3754	Nocturne	images/848.png
3755	Aatrox	images/849.png
3756	Kayn	images/850.png
3757	Kayn	images/851.png
3758	Kayn	images/852.png
3759	Braum	images/853.png
3760	Alistar	images/854.png
3761	Rek'Sai	images/855.png
3762	Olaf	images/856.png
3763	Tryndamere	images/857.png
3764	Syndra	images/858.png
3765	Taliyah	images/859.png
3766	Rengar	images/860.png
3767	Kha'Zix	images/861.png
3768	Nocturne	images/862.png
3769	Zac	images/863.png
3770	Malphite	images/864.png
3771	Sion	images/865.png
3772	Heimerdinger	images/866.png
3773	Fizz	images/867.png
3774	Corki	images/868.png
3775	Riven	images/869.png
3776	Irelia	images/870.png
3777	Quinn	images/871.png
3778	Vi	images/872.png
3779	Twitch	images/873.png
3780	Elise	images/874.png
3781	Kled	images/875.png
3782	Swain	images/876.png
3783	Kha'Zix	images/877.png
3784	Kog'Maw	images/878.png
3785	Vel'Koz	images/879.png
3786	Rek'Sai	images/880.png
3787	Kai'Sa	images/881.png
3788	Malzahar	images/882.png
3789	Kha'Zix	images/883.png
3790	Kassadin	images/884.png
3791	Bel'Veth	images/885.png
3792	Malzahar	images/886.png
3793	Elise	images/887.png
3794	Elise	images/888.png
3795	Ornn	images/889.png
3796	Ashe	images/890.png
3797	Katarina	images/891.png
3798	Cho'Gath	images/892.png
3799	Camille	images/893.png
3800	Karthus	images/894.png
3801	Gnar	images/895.png
3802	Milio	images/896.png
3803	Hecarim	images/897.png
3804	Wukong	images/898.png
3805	Lillia	images/900.png
3806	Yone	images/901.png
3807	Yasuo	images/902.png
3808	Naafiri	images/903.png
3809	Taliyah	images/904.png
3810	Lulu	images/905.png
3811	Evelynn	images/906.png
3812	Draven	images/907.png
3813	Jhin	images/908.png
3814	Twisted Fate	images/909.png
3815	Lulu	images/910.png
3816	Samira	images/911.png
3817	Udyr	images/912.png
3818	Xin Zhao	images/913.png
3819	Riven	images/914.png
3820	Yasuo	images/915.png
3821	Galio	images/916.png
3822	Udyr	images/917.png
3823	Braum	images/918.png
3824	Sejuani	images/919.png
3825	Soraka	images/920.png
3826	Nasus	images/921.png
3827	Kindred	images/922.png
3828	Aatrox	images/923.png
3829	Master Yi	images/924.png
3830	Caitlyn	images/925.png
3831	Yuumi	images/926.png
3832	Ekko	images/927.png
3833	Jinx	images/928.png
3834	Leona	images/929.png
3835	Janna	images/930.png
3836	Yuumi	images/931.png
3837	Caitlyn	images/0.png
3838	Fiddlesticks	images/1.png
3839	Sylas	images/2.png
3840	Bel'Veth	images/3.png
3841	Sylas	images/4.png
3842	Sylas	images/5.png
3843	Nunu & Willump	images/6.png
3844	Senna	images/7.png
3845	Tahm Kench	images/8.png
3846	Jayce	images/9.png
3847	Caitlyn	images/10.png
3848	Camille	images/11.png
3849	Pantheon	images/12.png
3850	K'Sante	images/13.png
3851	Evelynn	images/14.png
3852	Master Yi	images/15.png
3853	Twitch	images/16.png
3854	Tahm Kench	images/17.png
3855	Nilah	images/18.png
3856	Darius	images/19.png
3857	Nami	images/20.png
3858	Ryze	images/21.png
3859	Ezreal	images/22.png
3860	Xerath	images/23.png
3861	Sejuani	images/24.png
3862	Lucian	images/25.png
3863	Sona	images/26.png
3864	Azir	images/27.png
3865	Nidalee	images/28.png
3866	Akali	images/29.png
3867	Talon	images/30.png
3868	Aurelion Sol	images/31.png
3869	Soraka	images/32.png
3870	Xin Zhao	images/33.png
3871	Qiyana	images/34.png
3872	Akshan	images/35.png
3873	Shaco	images/36.png
3874	Renata Glasc	images/37.png
3875	Veigar	images/38.png
3876	Amumu	images/39.png
3877	Gragas	images/40.png
3878	Taric	images/41.png
3879	Rakan	images/42.png
3880	Tryndamere	images/43.png
3881	Rengar	images/44.png
3882	Kled	images/45.png
3883	Kled	images/46.png
3884	Seraphine	images/47.png
3885	Quinn	images/48.png
3886	Ornn	images/49.png
3887	Olaf	images/50.png
3888	Nunu & Willump	images/51.png
3889	Aphelios	images/52.png
3890	Kog'Maw	images/53.png
3891	Morgana	images/54.png
3892	Riven	images/55.png
3893	Viego	images/56.png
3894	Samira	images/57.png
3895	Talon	images/58.png
3896	Kayn	images/59.png
3897	Kayn	images/60.png
3898	Kayn	images/61.png
3899	Xayah	images/62.png
3900	Irelia	images/63.png
3901	Fiora	images/64.png
3902	Vi	images/65.png
3903	Brand	images/66.png
3904	Udyr	images/67.png
3905	Varus	images/68.png
3906	Quinn	images/69.png
3907	Teemo	images/70.png
3908	Briar	images/71.png
3909	Warwick	images/72.png
3910	Draven	images/73.png
3911	Tryndamere	images/74.png
3912	Lillia	images/75.png
3913	Neeko	images/76.png
3914	Dr. Mundo	images/77.png
3915	Gragas	images/78.png
3916	Rengar	images/79.png
3917	Pyke	images/80.png
3918	Sivir	images/81.png
3919	Gnar	images/82.png
3920	Gnar	images/83.png
3921	Gnar	images/84.png
3922	Katarina	images/85.png
3923	Ziggs	images/86.png
3924	Fiddlesticks	images/87.png
3925	Maokai	images/88.png
3926	Taric	images/89.png
3927	Rell	images/90.png
3928	Milio	images/91.png
3929	Aurelion Sol	images/92.png
3930	Udyr	images/93.png
3931	Riven	images/94.png
3932	Ivern	images/95.png
3933	Miss Fortune	images/96.png
3934	Shyvana	images/97.png
3935	Rek'Sai	images/98.png
3936	Rek'Sai	images/99.png
3937	Zeri	images/100.png
3938	Nidalee	images/101.png
3939	Nidalee	images/102.png
3940	Tristana	images/103.png
3941	Aphelios	images/104.png
3942	Ornn	images/105.png
3943	Nunu & Willump	images/106.png
3944	Malzahar	images/107.png
3945	Gangplank	images/108.png
3946	Jhin	images/109.png
3947	Bard	images/110.png
3948	Cho'Gath	images/111.png
3949	Jarvan IV	images/112.png
3950	Kog'Maw	images/113.png
3951	Vi	images/114.png
3952	Kayle	images/115.png
3953	Zac	images/116.png
3954	Briar	images/117.png
3955	Heimerdinger	images/118.png
3956	Heimerdinger	images/119.png
3957	Kled	images/120.png
3958	Sylas	images/121.png
3959	Varus	images/122.png
3960	Viktor	images/123.png
3961	Ahri	images/124.png
3962	Briar	images/125.png
3963	Trundle	images/126.png
3964	Ekko	images/127.png
3965	Zilean	images/128.png
3966	Fizz	images/129.png
3967	Xayah	images/130.png
3968	Orianna	images/131.png
3969	Elise	images/132.png
3970	Elise	images/133.png
3971	Graves	images/134.png
3972	Galio	images/135.png
3973	Pantheon	images/136.png
3974	Akshan	images/137.png
3975	Orianna	images/138.png
3976	Orianna	images/139.png
3977	Orianna	images/140.png
3978	Orianna	images/141.png
3979	Braum	images/142.png
3980	Vayne	images/143.png
3981	Brand	images/144.png
3982	Azir	images/145.png
3983	Nunu & Willump	images/146.png
3984	Twitch	images/147.png
3985	Zed	images/148.png
3986	Urgot	images/149.png
3987	Bard	images/150.png
3988	Aurelion Sol	images/151.png
3989	Taric	images/152.png
3990	Jax	images/153.png
3991	Garen	images/154.png
3992	Milio	images/155.png
3993	Sona	images/156.png
3994	Aphelios	images/157.png
3995	Xin Zhao	images/158.png
3996	Diana	images/159.png
3997	Briar	images/160.png
3998	Vladimir	images/161.png
3999	Lee Sin	images/162.png
4000	Darius	images/163.png
4001	Fiddlesticks	images/164.png
4002	Gnar	images/165.png
4003	Wukong	images/166.png
4004	Skarner	images/168.png
4005	Skarner	images/169.png
4006	Skarner	images/170.png
4007	Anivia	images/171.png
4008	Renekton	images/172.png
4009	Senna	images/173.png
4010	Amumu	images/174.png
4011	Amumu	images/175.png
4012	Jhin	images/176.png
4013	Wukong	images/177.png
4014	Ivern	images/178.png
4015	Thresh	images/179.png
4016	Kindred	images/180.png
4017	Jhin	images/181.png
4018	Samira	images/182.png
4019	Morgana	images/183.png
4020	Veigar	images/184.png
4021	Thresh	images/185.png
4022	Yorick	images/186.png
4023	Syndra	images/187.png
4024	Naafiri	images/188.png
4025	Mordekaiser	images/189.png
4026	K'Sante	images/190.png
4027	Senna	images/191.png
4028	Taric	images/192.png
4029	Jhin	images/193.png
4030	Xayah	images/194.png
4031	Zyra	images/195.png
4032	Twitch	images/196.png
4033	Karthus	images/197.png
4034	Pyke	images/198.png
4035	Bel'Veth	images/199.png
4036	Katarina	images/200.png
4037	Zed	images/201.png
4038	Viktor	images/202.png
4039	Thresh	images/203.png
4040	Sion	images/204.png
4041	Mordekaiser	images/205.png
4042	Swain	images/206.png
4043	Aatrox	images/207.png
4044	Shaco	images/208.png
4045	Darius	images/209.png
4046	Sion	images/210.png
4047	Garen	images/211.png
4048	Rammus	images/212.png
4049	Karma	images/213.png
4050	Irelia	images/214.png
4051	Karthus	images/215.png
4052	Garen	images/216.png
4053	Jarvan IV	images/217.png
4054	Evelynn	images/218.png
4055	Swain	images/219.png
4056	Swain	images/220.png
4057	Vi	images/221.png
4058	Nautilus	images/222.png
4059	Amumu	images/223.png
4060	Twisted Fate	images/224.png
4061	Xin Zhao	images/225.png
4062	Hecarim	images/226.png
4063	Tahm Kench	images/228.png
4064	Akshan	images/229.png
4065	Urgot	images/230.png
4066	Annie	images/231.png
4067	LeBlanc	images/232.png
4068	Kayle	images/233.png
4069	Kayle	images/234.png
4070	Renekton	images/235.png
4071	Vex	images/236.png
4072	Xayah	images/237.png
4073	Master Yi	images/238.png
4074	Miss Fortune	images/239.png
4075	Jarvan IV	images/240.png
4076	Shyvana	images/241.png
4077	Lee Sin	images/242.png
4078	Tristana	images/243.png
4079	Lillia	images/244.png
4080	Nautilus	images/245.png
4081	Gragas	images/246.png
4082	Fiora	images/247.png
4083	Nocturne	images/248.png
4084	Aphelios	images/249.png
4085	Nami	images/250.png
4086	Urgot	images/251.png
4087	Leona	images/252.png
4088	Qiyana	images/253.png
4089	Zac	images/254.png
4090	Kennen	images/255.png
4091	Rumble	images/256.png
4092	Azir	images/257.png
4093	Jax	images/258.png
4094	Rengar	images/259.png
4095	Rengar	images/260.png
4096	Rengar	images/261.png
4097	Evelynn	images/262.png
4098	Ashe	images/263.png
4099	Seraphine	images/264.png
4100	Graves	images/265.png
4101	Bel'Veth	images/266.png
4102	Soraka	images/267.png
4103	Ezreal	images/268.png
4104	Ahri	images/269.png
4105	Warwick	images/270.png
4106	LeBlanc	images/271.png
4107	Yorick	images/272.png
4108	Veigar	images/273.png
4109	Naafiri	images/274.png
4110	Gragas	images/275.png
4111	Tristana	images/276.png
4112	Xerath	images/277.png
4113	Janna	images/278.png
4114	Sett	images/279.png
4115	Aurelion Sol	images/280.png
4116	Yone	images/281.png
4117	Kalista	images/282.png
4118	Urgot	images/283.png
4119	Cho'Gath	images/284.png
4120	Xayah	images/285.png
4121	Yuumi	images/286.png
4122	Cho'Gath	images/287.png
4123	Rell	images/288.png
4124	Rell	images/289.png
4125	Rell	images/290.png
4126	Rakan	images/291.png
4127	Yuumi	images/292.png
4128	Vayne	images/293.png
4129	Lux	images/294.png
4130	Milio	images/295.png
4131	Jinx	images/296.png
4132	Akali	images/297.png
4133	Samira	images/298.png
4134	Shyvana	images/299.png
4135	Jinx	images/300.png
4136	Rumble	images/301.png
4137	Anivia	images/302.png
4138	Irelia	images/303.png
4139	Thresh	images/304.png
4140	Sivir	images/305.png
4141	Singed	images/307.png
4142	Lee Sin	images/308.png
4143	Karma	images/309.png
4144	K'Sante	images/310.png
4145	Syndra	images/311.png
4146	Kassadin	images/312.png
4147	Nilah	images/313.png
4148	Ahri	images/314.png
4149	Skarner	images/315.png
4150	Volibear	images/316.png
4151	Rammus	images/317.png
4152	Ivern	images/318.png
4153	Ashe	images/319.png
4154	Anivia	images/320.png
4155	Trundle	images/321.png
4156	Lissandra	images/322.png
4157	Rell	images/323.png
4158	Rek'Sai	images/324.png
4159	Rek'Sai	images/325.png
4160	Shyvana	images/326.png
4161	Sejuani	images/327.png
4162	Nasus	images/328.png
4163	Rek'Sai	images/329.png
4164	Zyra	images/330.png
4165	Karma	images/331.png
4166	Corki	images/332.png
4167	Jinx	images/334.png
4168	Pyke	images/335.png
4169	Pyke	images/336.png
4170	Braum	images/337.png
4171	Lissandra	images/338.png
4172	Sejuani	images/339.png
4173	Anivia	images/340.png
4174	Rakan	images/341.png
4175	Lulu	images/342.png
4176	Viktor	images/343.png
4177	Sion	images/344.png
4178	Gnar	images/345.png
4179	Dr. Mundo	images/346.png
4180	Akshan	images/347.png
4181	Jarvan IV	images/348.png
4182	Fiora	images/349.png
4183	Rakan	images/350.png
4184	Pantheon	images/351.png
4185	Malphite	images/352.png
4186	Zyra	images/353.png
4187	Aphelios	images/354.png
4188	Viktor	images/355.png
4189	Malphite	images/357.png
4190	Teemo	images/358.png
4191	Heimerdinger	images/359.png
4192	Heimerdinger	images/360.png
4193	Varus	images/361.png
4194	Gwen	images/362.png
4195	Shaco	images/363.png
4196	Poppy	images/364.png
4197	Renata Glasc	images/365.png
4198	Gragas	images/366.png
4199	Quinn	images/367.png
4200	Viego	images/368.png
4201	Illaoi	images/369.png
4202	Evelynn	images/370.png
4203	Ashe	images/371.png
4204	Sett	images/372.png
4205	Briar	images/373.png
4206	Alistar	images/374.png
4207	Caitlyn	images/375.png
4208	Dr. Mundo	images/376.png
4209	Viego	images/377.png
4210	Quinn	images/378.png
4211	Lulu	images/379.png
4212	Vladimir	images/380.png
4213	Darius	images/381.png
4214	Galio	images/382.png
4215	Poppy	images/383.png
4216	Akshan	images/384.png
4217	Ziggs	images/385.png
4218	Heimerdinger	images/386.png
4219	Jayce	images/387.png
4220	Heimerdinger	images/388.png
4221	Corki	images/389.png
4222	Heimerdinger	images/390.png
4223	Camille	images/391.png
4224	Seraphine	images/392.png
4225	Master Yi	images/393.png
4226	Sylas	images/394.png
4227	Camille	images/395.png
4228	Camille	images/396.png
4229	Gnar	images/397.png
4230	Gnar	images/398.png
4231	Renata Glasc	images/399.png
4232	Naafiri	images/400.png
4233	Janna	images/401.png
4234	Elise	images/402.png
4235	Sona	images/403.png
4236	Gnar	images/404.png
4237	Gnar	images/405.png
4238	Jayce	images/406.png
4239	Kai'Sa	images/407.png
4240	Kog'Maw	images/408.png
4241	Lissandra	images/409.png
4242	Lissandra	images/410.png
4243	Lux	images/411.png
4244	Skarner	images/412.png
4245	Annie	images/413.png
4246	Mordekaiser	images/414.png
4247	Dr. Mundo	images/415.png
4248	Aatrox	images/416.png
4249	Samira	images/417.png
4250	Aphelios	images/418.png
4251	Warwick	images/419.png
4252	Neeko	images/420.png
4253	Karma	images/421.png
4254	Singed	images/422.png
4255	Karma	images/423.png
4256	Irelia	images/424.png
4257	Poppy	images/425.png
4258	Udyr	images/426.png
4259	Lee Sin	images/427.png
4260	Shaco	images/428.png
4261	Nidalee	images/429.png
4262	Nidalee	images/430.png
4263	Warwick	images/431.png
4264	Kled	images/432.png
4265	Nilah	images/433.png
4266	Nilah	images/434.png
4267	Garen	images/435.png
4268	Rumble	images/436.png
4269	Galio	images/437.png
4270	Poppy	images/438.png
4271	Shen	images/439.png
4272	Riven	images/440.png
4273	Kai'Sa	images/441.png
4274	Trundle	images/442.png
4275	Sylas	images/443.png
4276	Sett	images/444.png
4277	Kindred	images/445.png
4278	Yasuo	images/446.png
4279	Evelynn	images/447.png
4280	Senna	images/448.png
4281	Yorick	images/449.png
4282	Karthus	images/450.png
4283	Draven	images/451.png
4284	Kha'Zix	images/452.png
4285	Illaoi	images/453.png
4286	Jax	images/454.png
4287	Zac	images/455.png
4288	Renata Glasc	images/456.png
4289	Vel'Koz	images/457.png
4290	Lux	images/458.png
4291	Zeri	images/459.png
4292	Jayce	images/460.png
4293	Jayce	images/461.png
4294	Kennen	images/462.png
4295	Lucian	images/463.png
4296	Lillia	images/464.png
4297	Kog'Maw	images/465.png
4298	Zeri	images/466.png
4299	Ornn	images/467.png
4300	Zed	images/468.png
4301	Varus	images/469.png
4302	Twisted Fate	images/470.png
4303	Vex	images/471.png
4304	Miss Fortune	images/472.png
4305	Rakan	images/473.png
4306	Renata Glasc	images/474.png
4307	Lux	images/475.png
4308	Diana	images/476.png
4309	Fiora	images/477.png
4310	Bard	images/478.png
4311	Rell	images/479.png
4312	Miss Fortune	images/480.png
4313	Malzahar	images/481.png
4314	Blitzcrank	images/482.png
4315	Xerath	images/483.png
4316	Karma	images/484.png
4317	Kindred	images/485.png
4318	Kennen	images/486.png
4319	Jarvan IV	images/487.png
4320	Kalista	images/488.png
4321	Jax	images/489.png
4322	Dr. Mundo	images/490.png
4323	Master Yi	images/491.png
4324	Singed	images/492.png
4325	Ziggs	images/493.png
4326	Jayce	images/494.png
4327	Jayce	images/495.png
4328	Jayce	images/496.png
4329	Cassiopeia	images/497.png
4330	LeBlanc	images/498.png
4331	LeBlanc	images/499.png
4332	LeBlanc	images/500.png
4333	LeBlanc	images/501.png
4334	LeBlanc	images/502.png
4335	Corki	images/503.png
4336	Vex	images/504.png
4337	Tryndamere	images/505.png
4338	Annie	images/507.png
4339	Janna	images/508.png
4340	Diana	images/509.png
4341	Aphelios	images/510.png
4342	Aphelios	images/511.png
4343	Aphelios	images/512.png
4344	Aphelios	images/513.png
4345	Aphelios	images/514.png
4346	Aphelios	images/515.png
4347	Aphelios	images/516.png
4348	Diana	images/517.png
4349	Zoe	images/518.png
4350	Yone	images/519.png
4351	Pantheon	images/520.png
4352	Kindred	images/521.png
4353	Yorick	images/522.png
4354	Teemo	images/523.png
4355	Ezreal	images/524.png
4356	Maokai	images/525.png
4357	Gwen	images/526.png
4358	Kassadin	images/527.png
4359	Malzahar	images/528.png
4360	Elise	images/529.png
4361	Elise	images/530.png
4362	Swain	images/531.png
4363	Graves	images/532.png
4364	Vayne	images/533.png
4365	Fizz	images/534.png
4366	Wukong	images/535.png
4367	Talon	images/536.png
4368	Darius	images/537.png
4369	Darius	images/538.png
4370	Cassiopeia	images/539.png
4371	Singed	images/540.png
4372	Teemo	images/541.png
4373	K'Sante	images/542.png
4374	Kassadin	images/543.png
4375	Mordekaiser	images/544.png
4376	Sivir	images/545.png
4377	Aphelios	images/546.png
4378	Hecarim	images/547.png
4379	Ahri	images/548.png
4380	Vel'Koz	images/549.png
4381	Blitzcrank	images/550.png
4382	Ryze	images/551.png
4383	Zoe	images/552.png
4384	Diana	images/553.png
4385	Ekko	images/554.png
4386	Nocturne	images/555.png
4387	Gangplank	images/556.png
4388	K'Sante	images/557.png
4389	Akali	images/558.png
4390	Sejuani	images/559.png
4391	Garen	images/560.png
4392	Vex	images/561.png
4393	Sylas	images/562.png
4394	Cassiopeia	images/563.png
4395	Pyke	images/564.png
4396	Aphelios	images/565.png
4397	Ekko	images/566.png
4398	Veigar	images/567.png
4399	Corki	images/568.png
4400	Twisted Fate	images/569.png
4401	Kalista	images/570.png
4402	Varus	images/571.png
4403	Senna	images/572.png
4404	Lucian	images/573.png
4405	Brand	images/574.png
4406	Trundle	images/575.png
4407	Caitlyn	images/576.png
4408	Sett	images/577.png
4409	Lulu	images/578.png
4410	Vel'Koz	images/579.png
4411	Fizz	images/580.png
4412	Kled	images/581.png
4413	Singed	images/582.png
4414	Neeko	images/584.png
4415	Zoe	images/585.png
4416	Nidalee	images/586.png
4417	Jinx	images/587.png
4418	Gangplank	images/588.png
4419	Sona	images/589.png
4420	Blitzcrank	images/590.png
4421	Rammus	images/591.png
4422	Camille	images/592.png
4423	Katarina	images/593.png
4424	Rek'Sai	images/594.png
4425	Warwick	images/595.png
4426	Nidalee	images/596.png
4427	Nidalee	images/597.png
4428	Veigar	images/598.png
4429	Lux	images/599.png
4430	Illaoi	images/600.png
4431	Nidalee	images/601.png
4432	Yuumi	images/602.png
4433	Alistar	images/603.png
4434	Urgot	images/604.png
4435	Brand	images/605.png
4436	Annie	images/606.png
4437	Rek'Sai	images/607.png
4438	Rek'Sai	images/608.png
4439	Graves	images/609.png
4440	Kayle	images/610.png
4441	Gnar	images/611.png
4442	Olaf	images/612.png
4443	Talon	images/613.png
4444	Hecarim	images/614.png
4445	Zyra	images/615.png
4446	Ashe	images/616.png
4447	Tristana	images/617.png
4448	Elise	images/618.png
4449	Swain	images/619.png
4450	Zed	images/620.png
4451	Mordekaiser	images/621.png
4452	Ryze	images/622.png
4453	Fiddlesticks	images/623.png
4454	Kayn	images/624.png
4455	Kayn	images/625.png
4456	Kayn	images/626.png
4457	Anivia	images/627.png
4458	Olaf	images/628.png
4459	Renekton	images/629.png
4460	Jax	images/630.png
4461	Vi	images/631.png
4462	Lucian	images/632.png
4463	Gangplank	images/633.png
4464	Kalista	images/634.png
4465	Karma	images/635.png
4466	Karthus	images/636.png
4467	Lee Sin	images/637.png
4468	Zilean	images/638.png
4469	Sivir	images/639.png
4470	Kassadin	images/640.png
4471	Lissandra	images/641.png
4472	Fiora	images/642.png
4473	Nautilus	images/643.png
4474	Ezreal	images/644.png
4475	Xerath	images/645.png
4476	Sion	images/646.png
4477	Taliyah	images/647.png
4478	Blitzcrank	images/648.png
4479	Tristana	images/649.png
4480	Ivern	images/650.png
4481	Bel'Veth	images/651.png
4482	Qiyana	images/652.png
4483	Ryze	images/653.png
4484	Riven	images/654.png
4485	Cho'Gath	images/655.png
4486	Renekton	images/656.png
4487	Lee Sin	images/657.png
4488	Lee Sin	images/658.png
4489	Soraka	images/659.png
4490	Vladimir	images/660.png
4491	Maokai	images/661.png
4492	Maokai	images/662.png
4493	Ziggs	images/663.png
4494	Rengar	images/664.png
4495	Syndra	images/665.png
4496	Rumble	images/666.png
4497	Brand	images/667.png
4498	Ornn	images/668.png
4499	Fizz	images/669.png
4500	Kai'Sa	images/670.png
4501	Malphite	images/671.png
4502	Taliyah	images/672.png
4503	Kalista	images/673.png
4504	Aphelios	images/674.png
4505	Cassiopeia	images/675.png
4506	Aphelios	images/677.png
4507	Talon	images/678.png
4508	Shen	images/679.png
4509	Zed	images/680.png
4510	Kayn	images/681.png
4511	Kayn	images/682.png
4512	Kayn	images/683.png
4513	Vex	images/684.png
4514	Neeko	images/685.png
4515	Rell	images/686.png
4516	Yorick	images/687.png
4517	Leona	images/688.png
4518	Galio	images/689.png
4519	Pantheon	images/690.png
4520	Azir	images/691.png
4521	Jayce	images/692.png
4522	Xerath	images/693.png
4523	Ziggs	images/694.png
4524	Nocturne	images/695.png
4525	Katarina	images/696.png
4526	Akali	images/697.png
4527	Azir	images/698.png
4528	LeBlanc	images/699.png
4529	Vayne	images/701.png
4530	Aurelion Sol	images/702.png
4531	Viktor	images/703.png
4532	Nasus	images/704.png
4533	Kled	images/705.png
4534	Gwen	images/706.png
4535	Elise	images/707.png
4536	Volibear	images/708.png
4537	Quinn	images/709.png
4538	Zoe	images/710.png
4539	Renekton	images/711.png
4540	Kennen	images/712.png
4541	Nilah	images/713.png
4542	Graves	images/714.png
4543	Gwen	images/715.png
4544	Nunu & Willump	images/716.png
4545	Rammus	images/717.png
4546	Leona	images/718.png
4547	Sona	images/719.png
4548	Lee Sin	images/720.png
4549	Lee Sin	images/721.png
4550	Nasus	images/722.png
4551	Sion	images/723.png
4552	Morgana	images/724.png
4553	Morgana	images/725.png
4554	Yone	images/726.png
4555	Karma	images/727.png
4556	Viego	images/728.png
4557	Zeri	images/729.png
4558	Viego	images/730.png
4559	Ryze	images/731.png
4560	Sivir	images/732.png
4561	Zoe	images/733.png
4562	Elise	images/734.png
4563	Elise	images/735.png
4564	Elise	images/736.png
4565	Rammus	images/737.png
4566	Draven	images/738.png
4567	Tryndamere	images/739.png
4568	Yone	images/741.png
4569	Nasus	images/742.png
4570	Hecarim	images/743.png
4571	Ahri	images/744.png
4572	Shen	images/745.png
4573	Twitch	images/746.png
4574	Twisted Fate	images/747.png
4575	Seraphine	images/748.png
4576	Nautilus	images/749.png
4577	Draven	images/750.png
4578	Braum	images/751.png
4579	Shen	images/752.png
4580	Soraka	images/753.png
4581	Kayle	images/754.png
4582	Taric	images/755.png
4583	Blitzcrank	images/756.png
4584	Poppy	images/757.png
4585	Yasuo	images/758.png
4586	Wukong	images/760.png
4587	Volibear	images/761.png
4588	Zyra	images/762.png
4589	Zac	images/763.png
4590	Miss Fortune	images/764.png
4591	Trundle	images/768.png
4592	Annie	images/769.png
4593	Leona	images/770.png
4594	Jinx	images/771.png
4595	Kai'Sa	images/772.png
4596	Qiyana	images/773.png
4597	Nami	images/774.png
4598	Seraphine	images/775.png
4599	Yasuo	images/776.png
4600	Nidalee	images/777.png
4601	Lillia	images/778.png
4602	Jinx	images/779.png
4603	Camille	images/780.png
4604	Janna	images/781.png
4605	Nidalee	images/782.png
4606	Neeko	images/783.png
4607	Amumu	images/784.png
4608	Kha'Zix	images/785.png
4609	Vel'Koz	images/786.png
4610	Bard	images/787.png
4611	Lee Sin	images/788.png
4612	Lee Sin	images/789.png
4613	Illaoi	images/790.png
4614	Qiyana	images/791.png
4615	Fiddlesticks	images/792.png
4616	Illaoi	images/793.png
4617	Thresh	images/794.png
4618	Naafiri	images/795.png
4619	Lucian	images/796.png
4620	Aatrox	images/797.png
4621	Kayn	images/798.png
4622	Kayn	images/799.png
4623	Kayn	images/800.png
4624	Rumble	images/801.png
4625	Aphelios	images/802.png
4626	Rakan	images/803.png
4627	Volibear	images/804.png
4628	Sett	images/805.png
4629	Tahm Kench	images/806.png
4630	Gwen	images/807.png
4631	Taliyah	images/808.png
4632	Xin Zhao	images/809.png
4633	Rengar	images/810.png
4634	Malphite	images/811.png
4635	Jayce	images/812.png
4636	Jayce	images/813.png
4637	Kennen	images/814.png
4638	Volibear	images/815.png
4639	Nami	images/816.png
4640	Nami	images/817.png
4641	Vladimir	images/818.png
4642	Zilean	images/819.png
4643	Zilean	images/820.png
4644	Zilean	images/821.png
4645	Ekko	images/822.png
4646	Nautilus	images/823.png
4647	Jayce	images/824.png
4648	Jayce	images/825.png
4649	Tahm Kench	images/826.png
4650	Morgana	images/827.png
4651	Olaf	images/828.png
4652	Teemo	images/829.png
4653	Alistar	images/830.png
4654	Syndra	images/831.png
4655	Vladimir	images/832.png
4656	Bard	images/833.png
4657	Gangplank	images/834.png
4658	Ivern	images/835.png
4659	Alistar	images/836.png
4660	Ezreal	images/837.png
4661	Vayne	images/838.png
4662	Rek'Sai	images/839.png
4663	Shen	images/840.png
4664	Akali	images/841.png
4665	Shyvana	images/842.png
4666	Cassiopeia	images/843.png
4667	Maokai	images/844.png
4668	Shaco	images/845.png
4669	Milio	images/846.png
4670	Zeri	images/847.png
4671	Nocturne	images/848.png
4672	Aatrox	images/849.png
4673	Kayn	images/850.png
4674	Kayn	images/851.png
4675	Kayn	images/852.png
4676	Braum	images/853.png
4677	Alistar	images/854.png
4678	Rek'Sai	images/855.png
4679	Olaf	images/856.png
4680	Tryndamere	images/857.png
4681	Syndra	images/858.png
4682	Taliyah	images/859.png
4683	Rengar	images/860.png
4684	Kha'Zix	images/861.png
4685	Nocturne	images/862.png
4686	Zac	images/863.png
4687	Malphite	images/864.png
4688	Sion	images/865.png
4689	Heimerdinger	images/866.png
4690	Fizz	images/867.png
4691	Corki	images/868.png
4692	Riven	images/869.png
4693	Irelia	images/870.png
4694	Quinn	images/871.png
4695	Vi	images/872.png
4696	Twitch	images/873.png
4697	Elise	images/874.png
4698	Kled	images/875.png
4699	Swain	images/876.png
4700	Kha'Zix	images/877.png
4701	Kog'Maw	images/878.png
4702	Vel'Koz	images/879.png
4703	Rek'Sai	images/880.png
4704	Kai'Sa	images/881.png
4705	Malzahar	images/882.png
4706	Kha'Zix	images/883.png
4707	Kassadin	images/884.png
4708	Bel'Veth	images/885.png
4709	Malzahar	images/886.png
4710	Elise	images/887.png
4711	Elise	images/888.png
4712	Ornn	images/889.png
4713	Ashe	images/890.png
4714	Katarina	images/891.png
4715	Cho'Gath	images/892.png
4716	Camille	images/893.png
4717	Karthus	images/894.png
4718	Gnar	images/895.png
4719	Milio	images/896.png
4720	Hecarim	images/897.png
4721	Wukong	images/898.png
4722	Lillia	images/900.png
4723	Yone	images/901.png
4724	Yasuo	images/902.png
4725	Naafiri	images/903.png
4726	Taliyah	images/904.png
4727	Lulu	images/905.png
4728	Evelynn	images/906.png
4729	Draven	images/907.png
4730	Jhin	images/908.png
4731	Twisted Fate	images/909.png
4732	Lulu	images/910.png
4733	Samira	images/911.png
4734	Udyr	images/912.png
4735	Xin Zhao	images/913.png
4736	Riven	images/914.png
4737	Yasuo	images/915.png
4738	Galio	images/916.png
4739	Udyr	images/917.png
4740	Braum	images/918.png
4741	Sejuani	images/919.png
4742	Soraka	images/920.png
4743	Nasus	images/921.png
4744	Kindred	images/922.png
4745	Aatrox	images/923.png
4746	Master Yi	images/924.png
4747	Caitlyn	images/925.png
4748	Yuumi	images/926.png
4749	Ekko	images/927.png
4750	Jinx	images/928.png
4751	Leona	images/929.png
4752	Janna	images/930.png
4753	Yuumi	images/931.png
4754	Caitlyn	images/0.png
4755	Fiddlesticks	images/1.png
4756	Sylas	images/2.png
4757	Bel'Veth	images/3.png
4758	Sylas	images/4.png
4759	Sylas	images/5.png
4760	Nunu & Willump	images/6.png
4761	Senna	images/7.png
4762	Tahm Kench	images/8.png
4763	Jayce	images/9.png
4764	Caitlyn	images/10.png
4765	Camille	images/11.png
4766	Pantheon	images/12.png
4767	K'Sante	images/13.png
4768	Evelynn	images/14.png
4769	Master Yi	images/15.png
4770	Twitch	images/16.png
4771	Tahm Kench	images/17.png
4772	Nilah	images/18.png
4773	Darius	images/19.png
4774	Nami	images/20.png
4775	Ryze	images/21.png
4776	Ezreal	images/22.png
4777	Xerath	images/23.png
4778	Sejuani	images/24.png
4779	Lucian	images/25.png
4780	Sona	images/26.png
4781	Azir	images/27.png
4782	Nidalee	images/28.png
4783	Akali	images/29.png
4784	Talon	images/30.png
4785	Aurelion Sol	images/31.png
4786	Soraka	images/32.png
4787	Xin Zhao	images/33.png
4788	Qiyana	images/34.png
4789	Akshan	images/35.png
4790	Shaco	images/36.png
4791	Renata Glasc	images/37.png
4792	Veigar	images/38.png
4793	Amumu	images/39.png
4794	Gragas	images/40.png
4795	Taric	images/41.png
4796	Rakan	images/42.png
4797	Tryndamere	images/43.png
4798	Rengar	images/44.png
4799	Kled	images/45.png
4800	Kled	images/46.png
4801	Seraphine	images/47.png
4802	Quinn	images/48.png
4803	Ornn	images/49.png
4804	Olaf	images/50.png
4805	Nunu & Willump	images/51.png
4806	Aphelios	images/52.png
4807	Kog'Maw	images/53.png
4808	Morgana	images/54.png
4809	Riven	images/55.png
4810	Viego	images/56.png
4811	Samira	images/57.png
4812	Talon	images/58.png
4813	Kayn	images/59.png
4814	Kayn	images/60.png
4815	Kayn	images/61.png
4816	Xayah	images/62.png
4817	Irelia	images/63.png
4818	Fiora	images/64.png
4819	Vi	images/65.png
4820	Brand	images/66.png
4821	Udyr	images/67.png
4822	Varus	images/68.png
4823	Quinn	images/69.png
4824	Teemo	images/70.png
4825	Briar	images/71.png
4826	Warwick	images/72.png
4827	Draven	images/73.png
4828	Tryndamere	images/74.png
4829	Lillia	images/75.png
4830	Neeko	images/76.png
4831	Dr. Mundo	images/77.png
4832	Gragas	images/78.png
4833	Rengar	images/79.png
4834	Pyke	images/80.png
4835	Sivir	images/81.png
4836	Gnar	images/82.png
4837	Gnar	images/83.png
4838	Gnar	images/84.png
4839	Katarina	images/85.png
4840	Ziggs	images/86.png
4841	Fiddlesticks	images/87.png
4842	Maokai	images/88.png
4843	Taric	images/89.png
4844	Rell	images/90.png
4845	Milio	images/91.png
4846	Aurelion Sol	images/92.png
4847	Udyr	images/93.png
4848	Riven	images/94.png
4849	Ivern	images/95.png
4850	Miss Fortune	images/96.png
4851	Shyvana	images/97.png
4852	Rek'Sai	images/98.png
4853	Rek'Sai	images/99.png
4854	Zeri	images/100.png
4855	Nidalee	images/101.png
4856	Nidalee	images/102.png
4857	Tristana	images/103.png
4858	Aphelios	images/104.png
4859	Ornn	images/105.png
4860	Nunu & Willump	images/106.png
4861	Malzahar	images/107.png
4862	Gangplank	images/108.png
4863	Jhin	images/109.png
4864	Bard	images/110.png
4865	Cho'Gath	images/111.png
4866	Jarvan IV	images/112.png
4867	Kog'Maw	images/113.png
4868	Vi	images/114.png
4869	Kayle	images/115.png
4870	Zac	images/116.png
4871	Briar	images/117.png
4872	Heimerdinger	images/118.png
4873	Heimerdinger	images/119.png
4874	Kled	images/120.png
4875	Sylas	images/121.png
4876	Varus	images/122.png
4877	Viktor	images/123.png
4878	Ahri	images/124.png
4879	Briar	images/125.png
4880	Trundle	images/126.png
4881	Ekko	images/127.png
4882	Zilean	images/128.png
4883	Fizz	images/129.png
4884	Xayah	images/130.png
4885	Orianna	images/131.png
4886	Elise	images/132.png
4887	Elise	images/133.png
4888	Graves	images/134.png
4889	Galio	images/135.png
4890	Pantheon	images/136.png
4891	Akshan	images/137.png
4892	Orianna	images/138.png
4893	Orianna	images/139.png
4894	Orianna	images/140.png
4895	Orianna	images/141.png
4896	Braum	images/142.png
4897	Vayne	images/143.png
4898	Brand	images/144.png
4899	Azir	images/145.png
4900	Nunu & Willump	images/146.png
4901	Twitch	images/147.png
4902	Zed	images/148.png
4903	Urgot	images/149.png
4904	Bard	images/150.png
4905	Aurelion Sol	images/151.png
4906	Taric	images/152.png
4907	Jax	images/153.png
4908	Garen	images/154.png
4909	Milio	images/155.png
4910	Sona	images/156.png
4911	Aphelios	images/157.png
4912	Xin Zhao	images/158.png
4913	Diana	images/159.png
4914	Briar	images/160.png
4915	Vladimir	images/161.png
4916	Lee Sin	images/162.png
4917	Darius	images/163.png
4918	Fiddlesticks	images/164.png
4919	Gnar	images/165.png
4920	Wukong	images/166.png
4921	Skarner	images/168.png
4922	Skarner	images/169.png
4923	Skarner	images/170.png
4924	Anivia	images/171.png
4925	Renekton	images/172.png
4926	Senna	images/173.png
4927	Amumu	images/174.png
4928	Amumu	images/175.png
4929	Jhin	images/176.png
4930	Wukong	images/177.png
4931	Ivern	images/178.png
4932	Thresh	images/179.png
4933	Kindred	images/180.png
4934	Jhin	images/181.png
4935	Samira	images/182.png
4936	Morgana	images/183.png
4937	Veigar	images/184.png
4938	Thresh	images/185.png
4939	Yorick	images/186.png
4940	Syndra	images/187.png
4941	Naafiri	images/188.png
4942	Mordekaiser	images/189.png
4943	K'Sante	images/190.png
4944	Senna	images/191.png
4945	Taric	images/192.png
4946	Jhin	images/193.png
4947	Xayah	images/194.png
4948	Zyra	images/195.png
4949	Twitch	images/196.png
4950	Karthus	images/197.png
4951	Pyke	images/198.png
4952	Bel'Veth	images/199.png
4953	Katarina	images/200.png
4954	Zed	images/201.png
4955	Viktor	images/202.png
4956	Thresh	images/203.png
4957	Sion	images/204.png
4958	Mordekaiser	images/205.png
4959	Swain	images/206.png
4960	Aatrox	images/207.png
4961	Shaco	images/208.png
4962	Darius	images/209.png
4963	Sion	images/210.png
4964	Garen	images/211.png
4965	Rammus	images/212.png
4966	Karma	images/213.png
4967	Irelia	images/214.png
4968	Karthus	images/215.png
4969	Garen	images/216.png
4970	Jarvan IV	images/217.png
4971	Evelynn	images/218.png
4972	Swain	images/219.png
4973	Swain	images/220.png
4974	Vi	images/221.png
4975	Nautilus	images/222.png
4976	Amumu	images/223.png
4977	Twisted Fate	images/224.png
4978	Xin Zhao	images/225.png
4979	Hecarim	images/226.png
4980	Tahm Kench	images/228.png
4981	Akshan	images/229.png
4982	Urgot	images/230.png
4983	Annie	images/231.png
4984	LeBlanc	images/232.png
4985	Kayle	images/233.png
4986	Kayle	images/234.png
4987	Renekton	images/235.png
4988	Vex	images/236.png
4989	Xayah	images/237.png
4990	Master Yi	images/238.png
4991	Miss Fortune	images/239.png
4992	Jarvan IV	images/240.png
4993	Shyvana	images/241.png
4994	Lee Sin	images/242.png
4995	Tristana	images/243.png
4996	Lillia	images/244.png
4997	Nautilus	images/245.png
4998	Gragas	images/246.png
4999	Fiora	images/247.png
5000	Nocturne	images/248.png
5001	Aphelios	images/249.png
5002	Nami	images/250.png
5003	Urgot	images/251.png
5004	Leona	images/252.png
5005	Qiyana	images/253.png
5006	Zac	images/254.png
5007	Kennen	images/255.png
5008	Rumble	images/256.png
5009	Azir	images/257.png
5010	Jax	images/258.png
5011	Rengar	images/259.png
5012	Rengar	images/260.png
5013	Rengar	images/261.png
5014	Evelynn	images/262.png
5015	Ashe	images/263.png
5016	Seraphine	images/264.png
5017	Graves	images/265.png
5018	Bel'Veth	images/266.png
5019	Soraka	images/267.png
5020	Ezreal	images/268.png
5021	Ahri	images/269.png
5022	Warwick	images/270.png
5023	LeBlanc	images/271.png
5024	Yorick	images/272.png
5025	Veigar	images/273.png
5026	Naafiri	images/274.png
5027	Gragas	images/275.png
5028	Tristana	images/276.png
5029	Xerath	images/277.png
5030	Janna	images/278.png
5031	Sett	images/279.png
5032	Aurelion Sol	images/280.png
5033	Yone	images/281.png
5034	Kalista	images/282.png
5035	Urgot	images/283.png
5036	Cho'Gath	images/284.png
5037	Xayah	images/285.png
5038	Yuumi	images/286.png
5039	Cho'Gath	images/287.png
5040	Rell	images/288.png
5041	Rell	images/289.png
5042	Rell	images/290.png
5043	Rakan	images/291.png
5044	Yuumi	images/292.png
5045	Vayne	images/293.png
5046	Lux	images/294.png
5047	Milio	images/295.png
5048	Jinx	images/296.png
5049	Akali	images/297.png
5050	Samira	images/298.png
5051	Shyvana	images/299.png
5052	Jinx	images/300.png
5053	Rumble	images/301.png
5054	Anivia	images/302.png
5055	Irelia	images/303.png
5056	Thresh	images/304.png
5057	Sivir	images/305.png
5058	Singed	images/307.png
5059	Lee Sin	images/308.png
5060	Karma	images/309.png
5061	K'Sante	images/310.png
5062	Syndra	images/311.png
5063	Kassadin	images/312.png
5064	Nilah	images/313.png
5065	Ahri	images/314.png
5066	Skarner	images/315.png
5067	Volibear	images/316.png
5068	Rammus	images/317.png
5069	Ivern	images/318.png
5070	Ashe	images/319.png
5071	Anivia	images/320.png
5072	Trundle	images/321.png
5073	Lissandra	images/322.png
5074	Rell	images/323.png
5075	Rek'Sai	images/324.png
5076	Rek'Sai	images/325.png
5077	Shyvana	images/326.png
5078	Sejuani	images/327.png
5079	Nasus	images/328.png
5080	Rek'Sai	images/329.png
5081	Zyra	images/330.png
5082	Karma	images/331.png
5083	Corki	images/332.png
5084	Jinx	images/334.png
5085	Pyke	images/335.png
5086	Pyke	images/336.png
5087	Braum	images/337.png
5088	Lissandra	images/338.png
5089	Sejuani	images/339.png
5090	Anivia	images/340.png
5091	Rakan	images/341.png
5092	Lulu	images/342.png
5093	Viktor	images/343.png
5094	Sion	images/344.png
5095	Gnar	images/345.png
5096	Dr. Mundo	images/346.png
5097	Akshan	images/347.png
5098	Jarvan IV	images/348.png
5099	Fiora	images/349.png
5100	Rakan	images/350.png
5101	Pantheon	images/351.png
5102	Malphite	images/352.png
5103	Zyra	images/353.png
5104	Aphelios	images/354.png
5105	Viktor	images/355.png
5106	Malphite	images/357.png
5107	Teemo	images/358.png
5108	Heimerdinger	images/359.png
5109	Heimerdinger	images/360.png
5110	Varus	images/361.png
5111	Gwen	images/362.png
5112	Shaco	images/363.png
5113	Poppy	images/364.png
5114	Renata Glasc	images/365.png
5115	Gragas	images/366.png
5116	Quinn	images/367.png
5117	Viego	images/368.png
5118	Illaoi	images/369.png
5119	Evelynn	images/370.png
5120	Ashe	images/371.png
5121	Sett	images/372.png
5122	Briar	images/373.png
5123	Alistar	images/374.png
5124	Caitlyn	images/375.png
5125	Dr. Mundo	images/376.png
5126	Viego	images/377.png
5127	Quinn	images/378.png
5128	Lulu	images/379.png
5129	Vladimir	images/380.png
5130	Darius	images/381.png
5131	Galio	images/382.png
5132	Poppy	images/383.png
5133	Akshan	images/384.png
5134	Ziggs	images/385.png
5135	Heimerdinger	images/386.png
5136	Jayce	images/387.png
5137	Heimerdinger	images/388.png
5138	Corki	images/389.png
5139	Heimerdinger	images/390.png
5140	Camille	images/391.png
5141	Seraphine	images/392.png
5142	Master Yi	images/393.png
5143	Sylas	images/394.png
5144	Camille	images/395.png
5145	Camille	images/396.png
5146	Gnar	images/397.png
5147	Gnar	images/398.png
5148	Renata Glasc	images/399.png
5149	Naafiri	images/400.png
5150	Janna	images/401.png
5151	Elise	images/402.png
5152	Sona	images/403.png
5153	Gnar	images/404.png
5154	Gnar	images/405.png
5155	Jayce	images/406.png
5156	Kai'Sa	images/407.png
5157	Kog'Maw	images/408.png
5158	Lissandra	images/409.png
5159	Lissandra	images/410.png
5160	Lux	images/411.png
5161	Skarner	images/412.png
5162	Annie	images/413.png
5163	Mordekaiser	images/414.png
5164	Dr. Mundo	images/415.png
5165	Aatrox	images/416.png
5166	Samira	images/417.png
5167	Aphelios	images/418.png
5168	Warwick	images/419.png
5169	Neeko	images/420.png
5170	Karma	images/421.png
5171	Singed	images/422.png
5172	Karma	images/423.png
5173	Irelia	images/424.png
5174	Poppy	images/425.png
5175	Udyr	images/426.png
5176	Lee Sin	images/427.png
5177	Shaco	images/428.png
5178	Nidalee	images/429.png
5179	Nidalee	images/430.png
5180	Warwick	images/431.png
5181	Kled	images/432.png
5182	Nilah	images/433.png
5183	Nilah	images/434.png
5184	Garen	images/435.png
5185	Rumble	images/436.png
5186	Galio	images/437.png
5187	Poppy	images/438.png
5188	Shen	images/439.png
5189	Riven	images/440.png
5190	Kai'Sa	images/441.png
5191	Trundle	images/442.png
5192	Sylas	images/443.png
5193	Sett	images/444.png
5194	Kindred	images/445.png
5195	Yasuo	images/446.png
5196	Evelynn	images/447.png
5197	Senna	images/448.png
5198	Yorick	images/449.png
5199	Karthus	images/450.png
5200	Draven	images/451.png
5201	Kha'Zix	images/452.png
5202	Illaoi	images/453.png
5203	Jax	images/454.png
5204	Zac	images/455.png
5205	Renata Glasc	images/456.png
5206	Vel'Koz	images/457.png
5207	Lux	images/458.png
5208	Zeri	images/459.png
5209	Jayce	images/460.png
5210	Jayce	images/461.png
5211	Kennen	images/462.png
5212	Lucian	images/463.png
5213	Lillia	images/464.png
5214	Kog'Maw	images/465.png
5215	Zeri	images/466.png
5216	Ornn	images/467.png
5217	Zed	images/468.png
5218	Varus	images/469.png
5219	Twisted Fate	images/470.png
5220	Vex	images/471.png
5221	Miss Fortune	images/472.png
5222	Rakan	images/473.png
5223	Renata Glasc	images/474.png
5224	Lux	images/475.png
5225	Diana	images/476.png
5226	Fiora	images/477.png
5227	Bard	images/478.png
5228	Rell	images/479.png
5229	Miss Fortune	images/480.png
5230	Malzahar	images/481.png
5231	Blitzcrank	images/482.png
5232	Xerath	images/483.png
5233	Karma	images/484.png
5234	Kindred	images/485.png
5235	Kennen	images/486.png
5236	Jarvan IV	images/487.png
5237	Kalista	images/488.png
5238	Jax	images/489.png
5239	Dr. Mundo	images/490.png
5240	Master Yi	images/491.png
5241	Singed	images/492.png
5242	Ziggs	images/493.png
5243	Jayce	images/494.png
5244	Jayce	images/495.png
5245	Jayce	images/496.png
5246	Cassiopeia	images/497.png
5247	LeBlanc	images/498.png
5248	LeBlanc	images/499.png
5249	LeBlanc	images/500.png
5250	LeBlanc	images/501.png
5251	LeBlanc	images/502.png
5252	Corki	images/503.png
5253	Vex	images/504.png
5254	Tryndamere	images/505.png
5255	Annie	images/507.png
5256	Janna	images/508.png
5257	Diana	images/509.png
5258	Aphelios	images/510.png
5259	Aphelios	images/511.png
5260	Aphelios	images/512.png
5261	Aphelios	images/513.png
5262	Aphelios	images/514.png
5263	Aphelios	images/515.png
5264	Aphelios	images/516.png
5265	Diana	images/517.png
5266	Zoe	images/518.png
5267	Yone	images/519.png
5268	Pantheon	images/520.png
5269	Kindred	images/521.png
5270	Yorick	images/522.png
5271	Teemo	images/523.png
5272	Ezreal	images/524.png
5273	Maokai	images/525.png
5274	Gwen	images/526.png
5275	Kassadin	images/527.png
5276	Malzahar	images/528.png
5277	Elise	images/529.png
5278	Elise	images/530.png
5279	Swain	images/531.png
5280	Graves	images/532.png
5281	Vayne	images/533.png
5282	Fizz	images/534.png
5283	Wukong	images/535.png
5284	Talon	images/536.png
5285	Darius	images/537.png
5286	Darius	images/538.png
5287	Cassiopeia	images/539.png
5288	Singed	images/540.png
5289	Teemo	images/541.png
5290	K'Sante	images/542.png
5291	Kassadin	images/543.png
5292	Mordekaiser	images/544.png
5293	Sivir	images/545.png
5294	Aphelios	images/546.png
5295	Hecarim	images/547.png
5296	Ahri	images/548.png
5297	Vel'Koz	images/549.png
5298	Blitzcrank	images/550.png
5299	Ryze	images/551.png
5300	Zoe	images/552.png
5301	Diana	images/553.png
5302	Ekko	images/554.png
5303	Nocturne	images/555.png
5304	Gangplank	images/556.png
5305	K'Sante	images/557.png
5306	Akali	images/558.png
5307	Sejuani	images/559.png
5308	Garen	images/560.png
5309	Vex	images/561.png
5310	Sylas	images/562.png
5311	Cassiopeia	images/563.png
5312	Pyke	images/564.png
5313	Aphelios	images/565.png
5314	Ekko	images/566.png
5315	Veigar	images/567.png
5316	Corki	images/568.png
5317	Twisted Fate	images/569.png
5318	Kalista	images/570.png
5319	Varus	images/571.png
5320	Senna	images/572.png
5321	Lucian	images/573.png
5322	Brand	images/574.png
5323	Trundle	images/575.png
5324	Caitlyn	images/576.png
5325	Sett	images/577.png
5326	Lulu	images/578.png
5327	Vel'Koz	images/579.png
5328	Fizz	images/580.png
5329	Kled	images/581.png
5330	Singed	images/582.png
5331	Neeko	images/584.png
5332	Zoe	images/585.png
5333	Nidalee	images/586.png
5334	Jinx	images/587.png
5335	Gangplank	images/588.png
5336	Sona	images/589.png
5337	Blitzcrank	images/590.png
5338	Rammus	images/591.png
5339	Camille	images/592.png
5340	Katarina	images/593.png
5341	Rek'Sai	images/594.png
5342	Warwick	images/595.png
5343	Nidalee	images/596.png
5344	Nidalee	images/597.png
5345	Veigar	images/598.png
5346	Lux	images/599.png
5347	Illaoi	images/600.png
5348	Nidalee	images/601.png
5349	Yuumi	images/602.png
5350	Alistar	images/603.png
5351	Urgot	images/604.png
5352	Brand	images/605.png
5353	Annie	images/606.png
5354	Rek'Sai	images/607.png
5355	Rek'Sai	images/608.png
5356	Graves	images/609.png
5357	Kayle	images/610.png
5358	Gnar	images/611.png
5359	Olaf	images/612.png
5360	Talon	images/613.png
5361	Hecarim	images/614.png
5362	Zyra	images/615.png
5363	Ashe	images/616.png
5364	Tristana	images/617.png
5365	Elise	images/618.png
5366	Swain	images/619.png
5367	Zed	images/620.png
5368	Mordekaiser	images/621.png
5369	Ryze	images/622.png
5370	Fiddlesticks	images/623.png
5371	Kayn	images/624.png
5372	Kayn	images/625.png
5373	Kayn	images/626.png
5374	Anivia	images/627.png
5375	Olaf	images/628.png
5376	Renekton	images/629.png
5377	Jax	images/630.png
5378	Vi	images/631.png
5379	Lucian	images/632.png
5380	Gangplank	images/633.png
5381	Kalista	images/634.png
5382	Karma	images/635.png
5383	Karthus	images/636.png
5384	Lee Sin	images/637.png
5385	Zilean	images/638.png
5386	Sivir	images/639.png
5387	Kassadin	images/640.png
5388	Lissandra	images/641.png
5389	Fiora	images/642.png
5390	Nautilus	images/643.png
5391	Ezreal	images/644.png
5392	Xerath	images/645.png
5393	Sion	images/646.png
5394	Taliyah	images/647.png
5395	Blitzcrank	images/648.png
5396	Tristana	images/649.png
5397	Ivern	images/650.png
5398	Bel'Veth	images/651.png
5399	Qiyana	images/652.png
5400	Ryze	images/653.png
5401	Riven	images/654.png
5402	Cho'Gath	images/655.png
5403	Renekton	images/656.png
5404	Lee Sin	images/657.png
5405	Lee Sin	images/658.png
5406	Soraka	images/659.png
5407	Vladimir	images/660.png
5408	Maokai	images/661.png
5409	Maokai	images/662.png
5410	Ziggs	images/663.png
5411	Rengar	images/664.png
5412	Syndra	images/665.png
5413	Rumble	images/666.png
5414	Brand	images/667.png
5415	Ornn	images/668.png
5416	Fizz	images/669.png
5417	Kai'Sa	images/670.png
5418	Malphite	images/671.png
5419	Taliyah	images/672.png
5420	Kalista	images/673.png
5421	Aphelios	images/674.png
5422	Cassiopeia	images/675.png
5423	Aphelios	images/677.png
5424	Talon	images/678.png
5425	Shen	images/679.png
5426	Zed	images/680.png
5427	Kayn	images/681.png
5428	Kayn	images/682.png
5429	Kayn	images/683.png
5430	Vex	images/684.png
5431	Neeko	images/685.png
5432	Rell	images/686.png
5433	Yorick	images/687.png
5434	Leona	images/688.png
5435	Galio	images/689.png
5436	Pantheon	images/690.png
5437	Azir	images/691.png
5438	Jayce	images/692.png
5439	Xerath	images/693.png
5440	Ziggs	images/694.png
5441	Nocturne	images/695.png
5442	Katarina	images/696.png
5443	Akali	images/697.png
5444	Azir	images/698.png
5445	LeBlanc	images/699.png
5446	Vayne	images/701.png
5447	Aurelion Sol	images/702.png
5448	Viktor	images/703.png
5449	Nasus	images/704.png
5450	Kled	images/705.png
5451	Gwen	images/706.png
5452	Elise	images/707.png
5453	Volibear	images/708.png
5454	Quinn	images/709.png
5455	Zoe	images/710.png
5456	Renekton	images/711.png
5457	Kennen	images/712.png
5458	Nilah	images/713.png
5459	Graves	images/714.png
5460	Gwen	images/715.png
5461	Nunu & Willump	images/716.png
5462	Rammus	images/717.png
5463	Leona	images/718.png
5464	Sona	images/719.png
5465	Lee Sin	images/720.png
5466	Lee Sin	images/721.png
5467	Nasus	images/722.png
5468	Sion	images/723.png
5469	Morgana	images/724.png
5470	Morgana	images/725.png
5471	Yone	images/726.png
5472	Karma	images/727.png
5473	Viego	images/728.png
5474	Zeri	images/729.png
5475	Viego	images/730.png
5476	Ryze	images/731.png
5477	Sivir	images/732.png
5478	Zoe	images/733.png
5479	Elise	images/734.png
5480	Elise	images/735.png
5481	Elise	images/736.png
5482	Rammus	images/737.png
5483	Draven	images/738.png
5484	Tryndamere	images/739.png
5485	Yone	images/741.png
5486	Nasus	images/742.png
5487	Hecarim	images/743.png
5488	Ahri	images/744.png
5489	Shen	images/745.png
5490	Twitch	images/746.png
5491	Twisted Fate	images/747.png
5492	Seraphine	images/748.png
5493	Nautilus	images/749.png
5494	Draven	images/750.png
5495	Braum	images/751.png
5496	Shen	images/752.png
5497	Soraka	images/753.png
5498	Kayle	images/754.png
5499	Taric	images/755.png
5500	Blitzcrank	images/756.png
5501	Poppy	images/757.png
5502	Yasuo	images/758.png
5503	Wukong	images/760.png
5504	Volibear	images/761.png
5505	Zyra	images/762.png
5506	Zac	images/763.png
5507	Miss Fortune	images/764.png
5508	Trundle	images/768.png
5509	Annie	images/769.png
5510	Leona	images/770.png
5511	Jinx	images/771.png
5512	Kai'Sa	images/772.png
5513	Qiyana	images/773.png
5514	Nami	images/774.png
5515	Seraphine	images/775.png
5516	Yasuo	images/776.png
5517	Nidalee	images/777.png
5518	Lillia	images/778.png
5519	Jinx	images/779.png
5520	Camille	images/780.png
5521	Janna	images/781.png
5522	Nidalee	images/782.png
5523	Neeko	images/783.png
5524	Amumu	images/784.png
5525	Kha'Zix	images/785.png
5526	Vel'Koz	images/786.png
5527	Bard	images/787.png
5528	Lee Sin	images/788.png
5529	Lee Sin	images/789.png
5530	Illaoi	images/790.png
5531	Qiyana	images/791.png
5532	Fiddlesticks	images/792.png
5533	Illaoi	images/793.png
5534	Thresh	images/794.png
5535	Naafiri	images/795.png
5536	Lucian	images/796.png
5537	Aatrox	images/797.png
5538	Kayn	images/798.png
5539	Kayn	images/799.png
5540	Kayn	images/800.png
5541	Rumble	images/801.png
5542	Aphelios	images/802.png
5543	Rakan	images/803.png
5544	Volibear	images/804.png
5545	Sett	images/805.png
5546	Tahm Kench	images/806.png
5547	Gwen	images/807.png
5548	Taliyah	images/808.png
5549	Xin Zhao	images/809.png
5550	Rengar	images/810.png
5551	Malphite	images/811.png
5552	Jayce	images/812.png
5553	Jayce	images/813.png
5554	Kennen	images/814.png
5555	Volibear	images/815.png
5556	Nami	images/816.png
5557	Nami	images/817.png
5558	Vladimir	images/818.png
5559	Zilean	images/819.png
5560	Zilean	images/820.png
5561	Zilean	images/821.png
5562	Ekko	images/822.png
5563	Nautilus	images/823.png
5564	Jayce	images/824.png
5565	Jayce	images/825.png
5566	Tahm Kench	images/826.png
5567	Morgana	images/827.png
5568	Olaf	images/828.png
5569	Teemo	images/829.png
5570	Alistar	images/830.png
5571	Syndra	images/831.png
5572	Vladimir	images/832.png
5573	Bard	images/833.png
5574	Gangplank	images/834.png
5575	Ivern	images/835.png
5576	Alistar	images/836.png
5577	Ezreal	images/837.png
5578	Vayne	images/838.png
5579	Rek'Sai	images/839.png
5580	Shen	images/840.png
5581	Akali	images/841.png
5582	Shyvana	images/842.png
5583	Cassiopeia	images/843.png
5584	Maokai	images/844.png
5585	Shaco	images/845.png
5586	Milio	images/846.png
5587	Zeri	images/847.png
5588	Nocturne	images/848.png
5589	Aatrox	images/849.png
5590	Kayn	images/850.png
5591	Kayn	images/851.png
5592	Kayn	images/852.png
5593	Braum	images/853.png
5594	Alistar	images/854.png
5595	Rek'Sai	images/855.png
5596	Olaf	images/856.png
5597	Tryndamere	images/857.png
5598	Syndra	images/858.png
5599	Taliyah	images/859.png
5600	Rengar	images/860.png
5601	Kha'Zix	images/861.png
5602	Nocturne	images/862.png
5603	Zac	images/863.png
5604	Malphite	images/864.png
5605	Sion	images/865.png
5606	Heimerdinger	images/866.png
5607	Fizz	images/867.png
5608	Corki	images/868.png
5609	Riven	images/869.png
5610	Irelia	images/870.png
5611	Quinn	images/871.png
5612	Vi	images/872.png
5613	Twitch	images/873.png
5614	Elise	images/874.png
5615	Kled	images/875.png
5616	Swain	images/876.png
5617	Kha'Zix	images/877.png
5618	Kog'Maw	images/878.png
5619	Vel'Koz	images/879.png
5620	Rek'Sai	images/880.png
5621	Kai'Sa	images/881.png
5622	Malzahar	images/882.png
5623	Kha'Zix	images/883.png
5624	Kassadin	images/884.png
5625	Bel'Veth	images/885.png
5626	Malzahar	images/886.png
5627	Elise	images/887.png
5628	Elise	images/888.png
5629	Ornn	images/889.png
5630	Ashe	images/890.png
5631	Katarina	images/891.png
5632	Cho'Gath	images/892.png
5633	Camille	images/893.png
5634	Karthus	images/894.png
5635	Gnar	images/895.png
5636	Milio	images/896.png
5637	Hecarim	images/897.png
5638	Wukong	images/898.png
5639	Lillia	images/900.png
5640	Yone	images/901.png
5641	Yasuo	images/902.png
5642	Naafiri	images/903.png
5643	Taliyah	images/904.png
5644	Lulu	images/905.png
5645	Evelynn	images/906.png
5646	Draven	images/907.png
5647	Jhin	images/908.png
5648	Twisted Fate	images/909.png
5649	Lulu	images/910.png
5650	Samira	images/911.png
5651	Udyr	images/912.png
5652	Xin Zhao	images/913.png
5653	Riven	images/914.png
5654	Yasuo	images/915.png
5655	Galio	images/916.png
5656	Udyr	images/917.png
5657	Braum	images/918.png
5658	Sejuani	images/919.png
5659	Soraka	images/920.png
5660	Nasus	images/921.png
5661	Kindred	images/922.png
5662	Aatrox	images/923.png
5663	Master Yi	images/924.png
5664	Caitlyn	images/925.png
5665	Yuumi	images/926.png
5666	Ekko	images/927.png
5667	Jinx	images/928.png
5668	Leona	images/929.png
5669	Janna	images/930.png
5670	Yuumi	images/931.png
5671	Caitlyn	images/0.png
5672	Fiddlesticks	images/1.png
5673	Sylas	images/2.png
5674	Bel'Veth	images/3.png
5675	Sylas	images/4.png
5676	Sylas	images/5.png
5677	Nunu & Willump	images/6.png
5678	Senna	images/7.png
5679	Tahm Kench	images/8.png
5680	Jayce	images/9.png
5681	Caitlyn	images/10.png
5682	Camille	images/11.png
5683	Pantheon	images/12.png
5684	K'Sante	images/13.png
5685	Evelynn	images/14.png
5686	Master Yi	images/15.png
5687	Twitch	images/16.png
5688	Tahm Kench	images/17.png
5689	Nilah	images/18.png
5690	Darius	images/19.png
5691	Nami	images/20.png
5692	Ryze	images/21.png
5693	Ezreal	images/22.png
5694	Xerath	images/23.png
5695	Sejuani	images/24.png
5696	Lucian	images/25.png
5697	Sona	images/26.png
5698	Azir	images/27.png
5699	Nidalee	images/28.png
5700	Akali	images/29.png
5701	Talon	images/30.png
5702	Aurelion Sol	images/31.png
5703	Soraka	images/32.png
5704	Xin Zhao	images/33.png
5705	Qiyana	images/34.png
5706	Akshan	images/35.png
5707	Shaco	images/36.png
5708	Renata Glasc	images/37.png
5709	Veigar	images/38.png
5710	Amumu	images/39.png
5711	Gragas	images/40.png
5712	Taric	images/41.png
5713	Rakan	images/42.png
5714	Tryndamere	images/43.png
5715	Rengar	images/44.png
5716	Kled	images/45.png
5717	Kled	images/46.png
5718	Seraphine	images/47.png
5719	Quinn	images/48.png
5720	Ornn	images/49.png
5721	Olaf	images/50.png
5722	Nunu & Willump	images/51.png
5723	Aphelios	images/52.png
5724	Kog'Maw	images/53.png
5725	Morgana	images/54.png
5726	Riven	images/55.png
5727	Viego	images/56.png
5728	Samira	images/57.png
5729	Talon	images/58.png
5730	Kayn	images/59.png
5731	Kayn	images/60.png
5732	Kayn	images/61.png
5733	Xayah	images/62.png
5734	Irelia	images/63.png
5735	Fiora	images/64.png
5736	Vi	images/65.png
5737	Brand	images/66.png
5738	Udyr	images/67.png
5739	Varus	images/68.png
5740	Quinn	images/69.png
5741	Teemo	images/70.png
5742	Briar	images/71.png
5743	Warwick	images/72.png
5744	Draven	images/73.png
5745	Tryndamere	images/74.png
5746	Lillia	images/75.png
5747	Neeko	images/76.png
5748	Dr. Mundo	images/77.png
5749	Gragas	images/78.png
5750	Rengar	images/79.png
5751	Pyke	images/80.png
5752	Sivir	images/81.png
5753	Gnar	images/82.png
5754	Gnar	images/83.png
5755	Gnar	images/84.png
5756	Katarina	images/85.png
5757	Ziggs	images/86.png
5758	Fiddlesticks	images/87.png
5759	Maokai	images/88.png
5760	Taric	images/89.png
5761	Rell	images/90.png
5762	Milio	images/91.png
5763	Aurelion Sol	images/92.png
5764	Udyr	images/93.png
5765	Riven	images/94.png
5766	Ivern	images/95.png
5767	Miss Fortune	images/96.png
5768	Shyvana	images/97.png
5769	Rek'Sai	images/98.png
5770	Rek'Sai	images/99.png
5771	Zeri	images/100.png
5772	Nidalee	images/101.png
5773	Nidalee	images/102.png
5774	Tristana	images/103.png
5775	Aphelios	images/104.png
5776	Ornn	images/105.png
5777	Nunu & Willump	images/106.png
5778	Malzahar	images/107.png
5779	Gangplank	images/108.png
5780	Jhin	images/109.png
5781	Bard	images/110.png
5782	Cho'Gath	images/111.png
5783	Jarvan IV	images/112.png
5784	Kog'Maw	images/113.png
5785	Vi	images/114.png
5786	Kayle	images/115.png
5787	Zac	images/116.png
5788	Briar	images/117.png
5789	Heimerdinger	images/118.png
5790	Heimerdinger	images/119.png
5791	Kled	images/120.png
5792	Sylas	images/121.png
5793	Varus	images/122.png
5794	Viktor	images/123.png
5795	Ahri	images/124.png
5796	Briar	images/125.png
5797	Trundle	images/126.png
5798	Ekko	images/127.png
5799	Zilean	images/128.png
5800	Fizz	images/129.png
5801	Xayah	images/130.png
5802	Orianna	images/131.png
5803	Elise	images/132.png
5804	Elise	images/133.png
5805	Graves	images/134.png
5806	Galio	images/135.png
5807	Pantheon	images/136.png
5808	Akshan	images/137.png
5809	Orianna	images/138.png
5810	Orianna	images/139.png
5811	Orianna	images/140.png
5812	Orianna	images/141.png
5813	Braum	images/142.png
5814	Vayne	images/143.png
5815	Brand	images/144.png
5816	Azir	images/145.png
5817	Nunu & Willump	images/146.png
5818	Twitch	images/147.png
5819	Zed	images/148.png
5820	Urgot	images/149.png
5821	Bard	images/150.png
5822	Aurelion Sol	images/151.png
5823	Taric	images/152.png
5824	Jax	images/153.png
5825	Garen	images/154.png
5826	Milio	images/155.png
5827	Sona	images/156.png
5828	Aphelios	images/157.png
5829	Xin Zhao	images/158.png
5830	Diana	images/159.png
5831	Briar	images/160.png
5832	Vladimir	images/161.png
5833	Lee Sin	images/162.png
5834	Darius	images/163.png
5835	Fiddlesticks	images/164.png
5836	Gnar	images/165.png
5837	Wukong	images/166.png
5838	Skarner	images/168.png
5839	Skarner	images/169.png
5840	Skarner	images/170.png
5841	Anivia	images/171.png
5842	Renekton	images/172.png
5843	Senna	images/173.png
5844	Amumu	images/174.png
5845	Amumu	images/175.png
5846	Jhin	images/176.png
5847	Wukong	images/177.png
5848	Ivern	images/178.png
5849	Thresh	images/179.png
5850	Kindred	images/180.png
5851	Jhin	images/181.png
5852	Samira	images/182.png
5853	Morgana	images/183.png
5854	Veigar	images/184.png
5855	Thresh	images/185.png
5856	Yorick	images/186.png
5857	Syndra	images/187.png
5858	Naafiri	images/188.png
5859	Mordekaiser	images/189.png
5860	K'Sante	images/190.png
5861	Senna	images/191.png
5862	Taric	images/192.png
5863	Jhin	images/193.png
5864	Xayah	images/194.png
5865	Zyra	images/195.png
5866	Twitch	images/196.png
5867	Karthus	images/197.png
5868	Pyke	images/198.png
5869	Bel'Veth	images/199.png
5870	Katarina	images/200.png
5871	Zed	images/201.png
5872	Viktor	images/202.png
5873	Thresh	images/203.png
5874	Sion	images/204.png
5875	Mordekaiser	images/205.png
5876	Swain	images/206.png
5877	Aatrox	images/207.png
5878	Shaco	images/208.png
5879	Darius	images/209.png
5880	Sion	images/210.png
5881	Garen	images/211.png
5882	Rammus	images/212.png
5883	Karma	images/213.png
5884	Irelia	images/214.png
5885	Karthus	images/215.png
5886	Garen	images/216.png
5887	Jarvan IV	images/217.png
5888	Evelynn	images/218.png
5889	Swain	images/219.png
5890	Swain	images/220.png
5891	Vi	images/221.png
5892	Nautilus	images/222.png
5893	Amumu	images/223.png
5894	Twisted Fate	images/224.png
5895	Xin Zhao	images/225.png
5896	Hecarim	images/226.png
5897	Tahm Kench	images/228.png
5898	Akshan	images/229.png
5899	Urgot	images/230.png
5900	Annie	images/231.png
5901	LeBlanc	images/232.png
5902	Kayle	images/233.png
5903	Kayle	images/234.png
5904	Renekton	images/235.png
5905	Vex	images/236.png
5906	Xayah	images/237.png
5907	Master Yi	images/238.png
5908	Miss Fortune	images/239.png
5909	Jarvan IV	images/240.png
5910	Shyvana	images/241.png
5911	Lee Sin	images/242.png
5912	Tristana	images/243.png
5913	Lillia	images/244.png
5914	Nautilus	images/245.png
5915	Gragas	images/246.png
5916	Fiora	images/247.png
5917	Nocturne	images/248.png
5918	Aphelios	images/249.png
5919	Nami	images/250.png
5920	Urgot	images/251.png
5921	Leona	images/252.png
5922	Qiyana	images/253.png
5923	Zac	images/254.png
5924	Kennen	images/255.png
5925	Rumble	images/256.png
5926	Azir	images/257.png
5927	Jax	images/258.png
5928	Rengar	images/259.png
5929	Rengar	images/260.png
5930	Rengar	images/261.png
5931	Evelynn	images/262.png
5932	Ashe	images/263.png
5933	Seraphine	images/264.png
5934	Graves	images/265.png
5935	Bel'Veth	images/266.png
5936	Soraka	images/267.png
5937	Ezreal	images/268.png
5938	Ahri	images/269.png
5939	Warwick	images/270.png
5940	LeBlanc	images/271.png
5941	Yorick	images/272.png
5942	Veigar	images/273.png
5943	Naafiri	images/274.png
5944	Gragas	images/275.png
5945	Tristana	images/276.png
5946	Xerath	images/277.png
5947	Janna	images/278.png
5948	Sett	images/279.png
5949	Aurelion Sol	images/280.png
5950	Yone	images/281.png
5951	Kalista	images/282.png
5952	Urgot	images/283.png
5953	Cho'Gath	images/284.png
5954	Xayah	images/285.png
5955	Yuumi	images/286.png
5956	Cho'Gath	images/287.png
5957	Rell	images/288.png
5958	Rell	images/289.png
5959	Rell	images/290.png
5960	Rakan	images/291.png
5961	Yuumi	images/292.png
5962	Vayne	images/293.png
5963	Lux	images/294.png
5964	Milio	images/295.png
5965	Jinx	images/296.png
5966	Akali	images/297.png
5967	Samira	images/298.png
5968	Shyvana	images/299.png
5969	Jinx	images/300.png
5970	Rumble	images/301.png
5971	Anivia	images/302.png
5972	Irelia	images/303.png
5973	Thresh	images/304.png
5974	Sivir	images/305.png
5975	Singed	images/307.png
5976	Lee Sin	images/308.png
5977	Karma	images/309.png
5978	K'Sante	images/310.png
5979	Syndra	images/311.png
5980	Kassadin	images/312.png
5981	Nilah	images/313.png
5982	Ahri	images/314.png
5983	Skarner	images/315.png
5984	Volibear	images/316.png
5985	Rammus	images/317.png
5986	Ivern	images/318.png
5987	Ashe	images/319.png
5988	Anivia	images/320.png
5989	Trundle	images/321.png
5990	Lissandra	images/322.png
5991	Rell	images/323.png
5992	Rek'Sai	images/324.png
5993	Rek'Sai	images/325.png
5994	Shyvana	images/326.png
5995	Sejuani	images/327.png
5996	Nasus	images/328.png
5997	Rek'Sai	images/329.png
5998	Zyra	images/330.png
5999	Karma	images/331.png
6000	Corki	images/332.png
6001	Jinx	images/334.png
6002	Pyke	images/335.png
6003	Pyke	images/336.png
6004	Braum	images/337.png
6005	Lissandra	images/338.png
6006	Sejuani	images/339.png
6007	Anivia	images/340.png
6008	Rakan	images/341.png
6009	Lulu	images/342.png
6010	Viktor	images/343.png
6011	Sion	images/344.png
6012	Gnar	images/345.png
6013	Dr. Mundo	images/346.png
6014	Akshan	images/347.png
6015	Jarvan IV	images/348.png
6016	Fiora	images/349.png
6017	Rakan	images/350.png
6018	Pantheon	images/351.png
6019	Malphite	images/352.png
6020	Zyra	images/353.png
6021	Aphelios	images/354.png
6022	Viktor	images/355.png
6023	Malphite	images/357.png
6024	Teemo	images/358.png
6025	Heimerdinger	images/359.png
6026	Heimerdinger	images/360.png
6027	Varus	images/361.png
6028	Gwen	images/362.png
6029	Shaco	images/363.png
6030	Poppy	images/364.png
6031	Renata Glasc	images/365.png
6032	Gragas	images/366.png
6033	Quinn	images/367.png
6034	Viego	images/368.png
6035	Illaoi	images/369.png
6036	Evelynn	images/370.png
6037	Ashe	images/371.png
6038	Sett	images/372.png
6039	Briar	images/373.png
6040	Alistar	images/374.png
6041	Caitlyn	images/375.png
6042	Dr. Mundo	images/376.png
6043	Viego	images/377.png
6044	Quinn	images/378.png
6045	Lulu	images/379.png
6046	Vladimir	images/380.png
6047	Darius	images/381.png
6048	Galio	images/382.png
6049	Poppy	images/383.png
6050	Akshan	images/384.png
6051	Ziggs	images/385.png
6052	Heimerdinger	images/386.png
6053	Jayce	images/387.png
6054	Heimerdinger	images/388.png
6055	Corki	images/389.png
6056	Heimerdinger	images/390.png
6057	Camille	images/391.png
6058	Seraphine	images/392.png
6059	Master Yi	images/393.png
6060	Sylas	images/394.png
6061	Camille	images/395.png
6062	Camille	images/396.png
6063	Gnar	images/397.png
6064	Gnar	images/398.png
6065	Renata Glasc	images/399.png
6066	Naafiri	images/400.png
6067	Janna	images/401.png
6068	Elise	images/402.png
6069	Sona	images/403.png
6070	Gnar	images/404.png
6071	Gnar	images/405.png
6072	Jayce	images/406.png
6073	Kai'Sa	images/407.png
6074	Kog'Maw	images/408.png
6075	Lissandra	images/409.png
6076	Lissandra	images/410.png
6077	Lux	images/411.png
6078	Skarner	images/412.png
6079	Annie	images/413.png
6080	Mordekaiser	images/414.png
6081	Dr. Mundo	images/415.png
6082	Aatrox	images/416.png
6083	Samira	images/417.png
6084	Aphelios	images/418.png
6085	Warwick	images/419.png
6086	Neeko	images/420.png
6087	Karma	images/421.png
6088	Singed	images/422.png
6089	Karma	images/423.png
6090	Irelia	images/424.png
6091	Poppy	images/425.png
6092	Udyr	images/426.png
6093	Lee Sin	images/427.png
6094	Shaco	images/428.png
6095	Nidalee	images/429.png
6096	Nidalee	images/430.png
6097	Warwick	images/431.png
6098	Kled	images/432.png
6099	Nilah	images/433.png
6100	Nilah	images/434.png
6101	Garen	images/435.png
6102	Rumble	images/436.png
6103	Galio	images/437.png
6104	Poppy	images/438.png
6105	Shen	images/439.png
6106	Riven	images/440.png
6107	Kai'Sa	images/441.png
6108	Trundle	images/442.png
6109	Sylas	images/443.png
6110	Sett	images/444.png
6111	Kindred	images/445.png
6112	Yasuo	images/446.png
6113	Evelynn	images/447.png
6114	Senna	images/448.png
6115	Yorick	images/449.png
6116	Karthus	images/450.png
6117	Draven	images/451.png
6118	Kha'Zix	images/452.png
6119	Illaoi	images/453.png
6120	Jax	images/454.png
6121	Zac	images/455.png
6122	Renata Glasc	images/456.png
6123	Vel'Koz	images/457.png
6124	Lux	images/458.png
6125	Zeri	images/459.png
6126	Jayce	images/460.png
6127	Jayce	images/461.png
6128	Kennen	images/462.png
6129	Lucian	images/463.png
6130	Lillia	images/464.png
6131	Kog'Maw	images/465.png
6132	Zeri	images/466.png
6133	Ornn	images/467.png
6134	Zed	images/468.png
6135	Varus	images/469.png
6136	Twisted Fate	images/470.png
6137	Vex	images/471.png
6138	Miss Fortune	images/472.png
6139	Rakan	images/473.png
6140	Renata Glasc	images/474.png
6141	Lux	images/475.png
6142	Diana	images/476.png
6143	Fiora	images/477.png
6144	Bard	images/478.png
6145	Rell	images/479.png
6146	Miss Fortune	images/480.png
6147	Malzahar	images/481.png
6148	Blitzcrank	images/482.png
6149	Xerath	images/483.png
6150	Karma	images/484.png
6151	Kindred	images/485.png
6152	Kennen	images/486.png
6153	Jarvan IV	images/487.png
6154	Kalista	images/488.png
6155	Jax	images/489.png
6156	Dr. Mundo	images/490.png
6157	Master Yi	images/491.png
6158	Singed	images/492.png
6159	Ziggs	images/493.png
6160	Jayce	images/494.png
6161	Jayce	images/495.png
6162	Jayce	images/496.png
6163	Cassiopeia	images/497.png
6164	LeBlanc	images/498.png
6165	LeBlanc	images/499.png
6166	LeBlanc	images/500.png
6167	LeBlanc	images/501.png
6168	LeBlanc	images/502.png
6169	Corki	images/503.png
6170	Vex	images/504.png
6171	Tryndamere	images/505.png
6172	Annie	images/507.png
6173	Janna	images/508.png
6174	Diana	images/509.png
6175	Aphelios	images/510.png
6176	Aphelios	images/511.png
6177	Aphelios	images/512.png
6178	Aphelios	images/513.png
6179	Aphelios	images/514.png
6180	Aphelios	images/515.png
6181	Aphelios	images/516.png
6182	Diana	images/517.png
6183	Zoe	images/518.png
6184	Yone	images/519.png
6185	Pantheon	images/520.png
6186	Kindred	images/521.png
6187	Yorick	images/522.png
6188	Teemo	images/523.png
6189	Ezreal	images/524.png
6190	Maokai	images/525.png
6191	Gwen	images/526.png
6192	Kassadin	images/527.png
6193	Malzahar	images/528.png
6194	Elise	images/529.png
6195	Elise	images/530.png
6196	Swain	images/531.png
6197	Graves	images/532.png
6198	Vayne	images/533.png
6199	Fizz	images/534.png
6200	Wukong	images/535.png
6201	Talon	images/536.png
6202	Darius	images/537.png
6203	Darius	images/538.png
6204	Cassiopeia	images/539.png
6205	Singed	images/540.png
6206	Teemo	images/541.png
6207	K'Sante	images/542.png
6208	Kassadin	images/543.png
6209	Mordekaiser	images/544.png
6210	Sivir	images/545.png
6211	Aphelios	images/546.png
6212	Hecarim	images/547.png
6213	Ahri	images/548.png
6214	Vel'Koz	images/549.png
6215	Blitzcrank	images/550.png
6216	Ryze	images/551.png
6217	Zoe	images/552.png
6218	Diana	images/553.png
6219	Ekko	images/554.png
6220	Nocturne	images/555.png
6221	Gangplank	images/556.png
6222	K'Sante	images/557.png
6223	Akali	images/558.png
6224	Sejuani	images/559.png
6225	Garen	images/560.png
6226	Vex	images/561.png
6227	Sylas	images/562.png
6228	Cassiopeia	images/563.png
6229	Pyke	images/564.png
6230	Aphelios	images/565.png
6231	Ekko	images/566.png
6232	Veigar	images/567.png
6233	Corki	images/568.png
6234	Twisted Fate	images/569.png
6235	Kalista	images/570.png
6236	Varus	images/571.png
6237	Senna	images/572.png
6238	Lucian	images/573.png
6239	Brand	images/574.png
6240	Trundle	images/575.png
6241	Caitlyn	images/576.png
6242	Sett	images/577.png
6243	Lulu	images/578.png
6244	Vel'Koz	images/579.png
6245	Fizz	images/580.png
6246	Kled	images/581.png
6247	Singed	images/582.png
6248	Neeko	images/584.png
6249	Zoe	images/585.png
6250	Nidalee	images/586.png
6251	Jinx	images/587.png
6252	Gangplank	images/588.png
6253	Sona	images/589.png
6254	Blitzcrank	images/590.png
6255	Rammus	images/591.png
6256	Camille	images/592.png
6257	Katarina	images/593.png
6258	Rek'Sai	images/594.png
6259	Warwick	images/595.png
6260	Nidalee	images/596.png
6261	Nidalee	images/597.png
6262	Veigar	images/598.png
6263	Lux	images/599.png
6264	Illaoi	images/600.png
6265	Nidalee	images/601.png
6266	Yuumi	images/602.png
6267	Alistar	images/603.png
6268	Urgot	images/604.png
6269	Brand	images/605.png
6270	Annie	images/606.png
6271	Rek'Sai	images/607.png
6272	Rek'Sai	images/608.png
6273	Graves	images/609.png
6274	Kayle	images/610.png
6275	Gnar	images/611.png
6276	Olaf	images/612.png
6277	Talon	images/613.png
6278	Hecarim	images/614.png
6279	Zyra	images/615.png
6280	Ashe	images/616.png
6281	Tristana	images/617.png
6282	Elise	images/618.png
6283	Swain	images/619.png
6284	Zed	images/620.png
6285	Mordekaiser	images/621.png
6286	Ryze	images/622.png
6287	Fiddlesticks	images/623.png
6288	Kayn	images/624.png
6289	Kayn	images/625.png
6290	Kayn	images/626.png
6291	Anivia	images/627.png
6292	Olaf	images/628.png
6293	Renekton	images/629.png
6294	Jax	images/630.png
6295	Vi	images/631.png
6296	Lucian	images/632.png
6297	Gangplank	images/633.png
6298	Kalista	images/634.png
6299	Karma	images/635.png
6300	Karthus	images/636.png
6301	Lee Sin	images/637.png
6302	Zilean	images/638.png
6303	Sivir	images/639.png
6304	Kassadin	images/640.png
6305	Lissandra	images/641.png
6306	Fiora	images/642.png
6307	Nautilus	images/643.png
6308	Ezreal	images/644.png
6309	Xerath	images/645.png
6310	Sion	images/646.png
6311	Taliyah	images/647.png
6312	Blitzcrank	images/648.png
6313	Tristana	images/649.png
6314	Ivern	images/650.png
6315	Bel'Veth	images/651.png
6316	Qiyana	images/652.png
6317	Ryze	images/653.png
6318	Riven	images/654.png
6319	Cho'Gath	images/655.png
6320	Renekton	images/656.png
6321	Lee Sin	images/657.png
6322	Lee Sin	images/658.png
6323	Soraka	images/659.png
6324	Vladimir	images/660.png
6325	Maokai	images/661.png
6326	Maokai	images/662.png
6327	Ziggs	images/663.png
6328	Rengar	images/664.png
6329	Syndra	images/665.png
6330	Rumble	images/666.png
6331	Brand	images/667.png
6332	Ornn	images/668.png
6333	Fizz	images/669.png
6334	Kai'Sa	images/670.png
6335	Malphite	images/671.png
6336	Taliyah	images/672.png
6337	Kalista	images/673.png
6338	Aphelios	images/674.png
6339	Cassiopeia	images/675.png
6340	Aphelios	images/677.png
6341	Talon	images/678.png
6342	Shen	images/679.png
6343	Zed	images/680.png
6344	Kayn	images/681.png
6345	Kayn	images/682.png
6346	Kayn	images/683.png
6347	Vex	images/684.png
6348	Neeko	images/685.png
6349	Rell	images/686.png
6350	Yorick	images/687.png
6351	Leona	images/688.png
6352	Galio	images/689.png
6353	Pantheon	images/690.png
6354	Azir	images/691.png
6355	Jayce	images/692.png
6356	Xerath	images/693.png
6357	Ziggs	images/694.png
6358	Nocturne	images/695.png
6359	Katarina	images/696.png
6360	Akali	images/697.png
6361	Azir	images/698.png
6362	LeBlanc	images/699.png
6363	Vayne	images/701.png
6364	Aurelion Sol	images/702.png
6365	Viktor	images/703.png
6366	Nasus	images/704.png
6367	Kled	images/705.png
6368	Gwen	images/706.png
6369	Elise	images/707.png
6370	Volibear	images/708.png
6371	Quinn	images/709.png
6372	Zoe	images/710.png
6373	Renekton	images/711.png
6374	Kennen	images/712.png
6375	Nilah	images/713.png
6376	Graves	images/714.png
6377	Gwen	images/715.png
6378	Nunu & Willump	images/716.png
6379	Rammus	images/717.png
6380	Leona	images/718.png
6381	Sona	images/719.png
6382	Lee Sin	images/720.png
6383	Lee Sin	images/721.png
6384	Nasus	images/722.png
6385	Sion	images/723.png
6386	Morgana	images/724.png
6387	Morgana	images/725.png
6388	Yone	images/726.png
6389	Karma	images/727.png
6390	Viego	images/728.png
6391	Zeri	images/729.png
6392	Viego	images/730.png
6393	Ryze	images/731.png
6394	Sivir	images/732.png
6395	Zoe	images/733.png
6396	Elise	images/734.png
6397	Elise	images/735.png
6398	Elise	images/736.png
6399	Rammus	images/737.png
6400	Draven	images/738.png
6401	Tryndamere	images/739.png
6402	Yone	images/741.png
6403	Nasus	images/742.png
6404	Hecarim	images/743.png
6405	Ahri	images/744.png
6406	Shen	images/745.png
6407	Twitch	images/746.png
6408	Twisted Fate	images/747.png
6409	Seraphine	images/748.png
6410	Nautilus	images/749.png
6411	Draven	images/750.png
6412	Braum	images/751.png
6413	Shen	images/752.png
6414	Soraka	images/753.png
6415	Kayle	images/754.png
6416	Taric	images/755.png
6417	Blitzcrank	images/756.png
6418	Poppy	images/757.png
6419	Yasuo	images/758.png
6420	Wukong	images/760.png
6421	Volibear	images/761.png
6422	Zyra	images/762.png
6423	Zac	images/763.png
6424	Miss Fortune	images/764.png
6425	Trundle	images/768.png
6426	Annie	images/769.png
6427	Leona	images/770.png
6428	Jinx	images/771.png
6429	Kai'Sa	images/772.png
6430	Qiyana	images/773.png
6431	Nami	images/774.png
6432	Seraphine	images/775.png
6433	Yasuo	images/776.png
6434	Nidalee	images/777.png
6435	Lillia	images/778.png
6436	Jinx	images/779.png
6437	Camille	images/780.png
6438	Janna	images/781.png
6439	Nidalee	images/782.png
6440	Neeko	images/783.png
6441	Amumu	images/784.png
6442	Kha'Zix	images/785.png
6443	Vel'Koz	images/786.png
6444	Bard	images/787.png
6445	Lee Sin	images/788.png
6446	Lee Sin	images/789.png
6447	Illaoi	images/790.png
6448	Qiyana	images/791.png
6449	Fiddlesticks	images/792.png
6450	Illaoi	images/793.png
6451	Thresh	images/794.png
6452	Naafiri	images/795.png
6453	Lucian	images/796.png
6454	Aatrox	images/797.png
6455	Kayn	images/798.png
6456	Kayn	images/799.png
6457	Kayn	images/800.png
6458	Rumble	images/801.png
6459	Aphelios	images/802.png
6460	Rakan	images/803.png
6461	Volibear	images/804.png
6462	Sett	images/805.png
6463	Tahm Kench	images/806.png
6464	Gwen	images/807.png
6465	Taliyah	images/808.png
6466	Xin Zhao	images/809.png
6467	Rengar	images/810.png
6468	Malphite	images/811.png
6469	Jayce	images/812.png
6470	Jayce	images/813.png
6471	Kennen	images/814.png
6472	Volibear	images/815.png
6473	Nami	images/816.png
6474	Nami	images/817.png
6475	Vladimir	images/818.png
6476	Zilean	images/819.png
6477	Zilean	images/820.png
6478	Zilean	images/821.png
6479	Ekko	images/822.png
6480	Nautilus	images/823.png
6481	Jayce	images/824.png
6482	Jayce	images/825.png
6483	Tahm Kench	images/826.png
6484	Morgana	images/827.png
6485	Olaf	images/828.png
6486	Teemo	images/829.png
6487	Alistar	images/830.png
6488	Syndra	images/831.png
6489	Vladimir	images/832.png
6490	Bard	images/833.png
6491	Gangplank	images/834.png
6492	Ivern	images/835.png
6493	Alistar	images/836.png
6494	Ezreal	images/837.png
6495	Vayne	images/838.png
6496	Rek'Sai	images/839.png
6497	Shen	images/840.png
6498	Akali	images/841.png
6499	Shyvana	images/842.png
6500	Cassiopeia	images/843.png
6501	Maokai	images/844.png
6502	Shaco	images/845.png
6503	Milio	images/846.png
6504	Zeri	images/847.png
6505	Nocturne	images/848.png
6506	Aatrox	images/849.png
6507	Kayn	images/850.png
6508	Kayn	images/851.png
6509	Kayn	images/852.png
6510	Braum	images/853.png
6511	Alistar	images/854.png
6512	Rek'Sai	images/855.png
6513	Olaf	images/856.png
6514	Tryndamere	images/857.png
6515	Syndra	images/858.png
6516	Taliyah	images/859.png
6517	Rengar	images/860.png
6518	Kha'Zix	images/861.png
6519	Nocturne	images/862.png
6520	Zac	images/863.png
6521	Malphite	images/864.png
6522	Sion	images/865.png
6523	Heimerdinger	images/866.png
6524	Fizz	images/867.png
6525	Corki	images/868.png
6526	Riven	images/869.png
6527	Irelia	images/870.png
6528	Quinn	images/871.png
6529	Vi	images/872.png
6530	Twitch	images/873.png
6531	Elise	images/874.png
6532	Kled	images/875.png
6533	Swain	images/876.png
6534	Kha'Zix	images/877.png
6535	Kog'Maw	images/878.png
6536	Vel'Koz	images/879.png
6537	Rek'Sai	images/880.png
6538	Kai'Sa	images/881.png
6539	Malzahar	images/882.png
6540	Kha'Zix	images/883.png
6541	Kassadin	images/884.png
6542	Bel'Veth	images/885.png
6543	Malzahar	images/886.png
6544	Elise	images/887.png
6545	Elise	images/888.png
6546	Ornn	images/889.png
6547	Ashe	images/890.png
6548	Katarina	images/891.png
6549	Cho'Gath	images/892.png
6550	Camille	images/893.png
6551	Karthus	images/894.png
6552	Gnar	images/895.png
6553	Milio	images/896.png
6554	Hecarim	images/897.png
6555	Wukong	images/898.png
6556	Lillia	images/900.png
6557	Yone	images/901.png
6558	Yasuo	images/902.png
6559	Naafiri	images/903.png
6560	Taliyah	images/904.png
6561	Lulu	images/905.png
6562	Evelynn	images/906.png
6563	Draven	images/907.png
6564	Jhin	images/908.png
6565	Twisted Fate	images/909.png
6566	Lulu	images/910.png
6567	Samira	images/911.png
6568	Udyr	images/912.png
6569	Xin Zhao	images/913.png
6570	Riven	images/914.png
6571	Yasuo	images/915.png
6572	Galio	images/916.png
6573	Udyr	images/917.png
6574	Braum	images/918.png
6575	Sejuani	images/919.png
6576	Soraka	images/920.png
6577	Nasus	images/921.png
6578	Kindred	images/922.png
6579	Aatrox	images/923.png
6580	Master Yi	images/924.png
6581	Caitlyn	images/925.png
6582	Yuumi	images/926.png
6583	Ekko	images/927.png
6584	Jinx	images/928.png
6585	Leona	images/929.png
6586	Janna	images/930.png
6587	Yuumi	images/931.png
6588	Caitlyn	images/0.png
6589	Fiddlesticks	images/1.png
6590	Sylas	images/2.png
6591	Bel'Veth	images/3.png
6592	Sylas	images/4.png
6593	Sylas	images/5.png
6594	Nunu & Willump	images/6.png
6595	Senna	images/7.png
6596	Tahm Kench	images/8.png
6597	Jayce	images/9.png
6598	Caitlyn	images/10.png
6599	Camille	images/11.png
6600	Pantheon	images/12.png
6601	K'Sante	images/13.png
6602	Evelynn	images/14.png
6603	Master Yi	images/15.png
6604	Twitch	images/16.png
6605	Tahm Kench	images/17.png
6606	Nilah	images/18.png
6607	Darius	images/19.png
6608	Nami	images/20.png
6609	Ryze	images/21.png
6610	Ezreal	images/22.png
6611	Xerath	images/23.png
6612	Sejuani	images/24.png
6613	Lucian	images/25.png
6614	Sona	images/26.png
6615	Azir	images/27.png
6616	Nidalee	images/28.png
6617	Akali	images/29.png
6618	Talon	images/30.png
6619	Aurelion Sol	images/31.png
6620	Soraka	images/32.png
6621	Xin Zhao	images/33.png
6622	Qiyana	images/34.png
6623	Akshan	images/35.png
6624	Shaco	images/36.png
6625	Renata Glasc	images/37.png
6626	Veigar	images/38.png
6627	Amumu	images/39.png
6628	Gragas	images/40.png
6629	Taric	images/41.png
6630	Rakan	images/42.png
6631	Tryndamere	images/43.png
6632	Rengar	images/44.png
6633	Kled	images/45.png
6634	Kled	images/46.png
6635	Seraphine	images/47.png
6636	Quinn	images/48.png
6637	Ornn	images/49.png
6638	Olaf	images/50.png
6639	Nunu & Willump	images/51.png
6640	Aphelios	images/52.png
6641	Kog'Maw	images/53.png
6642	Morgana	images/54.png
6643	Riven	images/55.png
6644	Viego	images/56.png
6645	Samira	images/57.png
6646	Talon	images/58.png
6647	Kayn	images/59.png
6648	Kayn	images/60.png
6649	Kayn	images/61.png
6650	Xayah	images/62.png
6651	Irelia	images/63.png
6652	Fiora	images/64.png
6653	Vi	images/65.png
6654	Brand	images/66.png
6655	Udyr	images/67.png
6656	Varus	images/68.png
6657	Quinn	images/69.png
6658	Teemo	images/70.png
6659	Briar	images/71.png
6660	Warwick	images/72.png
6661	Draven	images/73.png
6662	Tryndamere	images/74.png
6663	Lillia	images/75.png
6664	Neeko	images/76.png
6665	Dr. Mundo	images/77.png
6666	Gragas	images/78.png
6667	Rengar	images/79.png
6668	Pyke	images/80.png
6669	Sivir	images/81.png
6670	Gnar	images/82.png
6671	Gnar	images/83.png
6672	Gnar	images/84.png
6673	Katarina	images/85.png
6674	Ziggs	images/86.png
6675	Fiddlesticks	images/87.png
6676	Maokai	images/88.png
6677	Taric	images/89.png
6678	Rell	images/90.png
6679	Milio	images/91.png
6680	Aurelion Sol	images/92.png
6681	Udyr	images/93.png
6682	Riven	images/94.png
6683	Ivern	images/95.png
6684	Miss Fortune	images/96.png
6685	Shyvana	images/97.png
6686	Rek'Sai	images/98.png
6687	Rek'Sai	images/99.png
6688	Zeri	images/100.png
6689	Nidalee	images/101.png
6690	Nidalee	images/102.png
6691	Tristana	images/103.png
6692	Aphelios	images/104.png
6693	Ornn	images/105.png
6694	Nunu & Willump	images/106.png
6695	Malzahar	images/107.png
6696	Gangplank	images/108.png
6697	Jhin	images/109.png
6698	Bard	images/110.png
6699	Cho'Gath	images/111.png
6700	Jarvan IV	images/112.png
6701	Kog'Maw	images/113.png
6702	Vi	images/114.png
6703	Kayle	images/115.png
6704	Zac	images/116.png
6705	Briar	images/117.png
6706	Heimerdinger	images/118.png
6707	Heimerdinger	images/119.png
6708	Kled	images/120.png
6709	Sylas	images/121.png
6710	Varus	images/122.png
6711	Viktor	images/123.png
6712	Ahri	images/124.png
6713	Briar	images/125.png
6714	Trundle	images/126.png
6715	Ekko	images/127.png
6716	Zilean	images/128.png
6717	Fizz	images/129.png
6718	Xayah	images/130.png
6719	Orianna	images/131.png
6720	Elise	images/132.png
6721	Elise	images/133.png
6722	Graves	images/134.png
6723	Galio	images/135.png
6724	Pantheon	images/136.png
6725	Akshan	images/137.png
6726	Orianna	images/138.png
6727	Orianna	images/139.png
6728	Orianna	images/140.png
6729	Orianna	images/141.png
6730	Braum	images/142.png
6731	Vayne	images/143.png
6732	Brand	images/144.png
6733	Azir	images/145.png
6734	Nunu & Willump	images/146.png
6735	Twitch	images/147.png
6736	Zed	images/148.png
6737	Urgot	images/149.png
6738	Bard	images/150.png
6739	Aurelion Sol	images/151.png
6740	Taric	images/152.png
6741	Jax	images/153.png
6742	Garen	images/154.png
6743	Milio	images/155.png
6744	Sona	images/156.png
6745	Aphelios	images/157.png
6746	Xin Zhao	images/158.png
6747	Diana	images/159.png
6748	Briar	images/160.png
6749	Vladimir	images/161.png
6750	Lee Sin	images/162.png
6751	Darius	images/163.png
6752	Fiddlesticks	images/164.png
6753	Gnar	images/165.png
6754	Wukong	images/166.png
6755	Skarner	images/168.png
6756	Skarner	images/169.png
6757	Skarner	images/170.png
6758	Anivia	images/171.png
6759	Renekton	images/172.png
6760	Senna	images/173.png
6761	Amumu	images/174.png
6762	Amumu	images/175.png
6763	Jhin	images/176.png
6764	Wukong	images/177.png
6765	Ivern	images/178.png
6766	Thresh	images/179.png
6767	Kindred	images/180.png
6768	Jhin	images/181.png
6769	Samira	images/182.png
6770	Morgana	images/183.png
6771	Veigar	images/184.png
6772	Thresh	images/185.png
6773	Yorick	images/186.png
6774	Syndra	images/187.png
6775	Naafiri	images/188.png
6776	Mordekaiser	images/189.png
6777	K'Sante	images/190.png
6778	Senna	images/191.png
6779	Taric	images/192.png
6780	Jhin	images/193.png
6781	Xayah	images/194.png
6782	Zyra	images/195.png
6783	Twitch	images/196.png
6784	Karthus	images/197.png
6785	Pyke	images/198.png
6786	Bel'Veth	images/199.png
6787	Katarina	images/200.png
6788	Zed	images/201.png
6789	Viktor	images/202.png
6790	Thresh	images/203.png
6791	Sion	images/204.png
6792	Mordekaiser	images/205.png
6793	Swain	images/206.png
6794	Aatrox	images/207.png
6795	Shaco	images/208.png
6796	Darius	images/209.png
6797	Sion	images/210.png
6798	Garen	images/211.png
6799	Rammus	images/212.png
6800	Karma	images/213.png
6801	Irelia	images/214.png
6802	Karthus	images/215.png
6803	Garen	images/216.png
6804	Jarvan IV	images/217.png
6805	Evelynn	images/218.png
6806	Swain	images/219.png
6807	Swain	images/220.png
6808	Vi	images/221.png
6809	Nautilus	images/222.png
6810	Amumu	images/223.png
6811	Twisted Fate	images/224.png
6812	Xin Zhao	images/225.png
6813	Hecarim	images/226.png
6814	Tahm Kench	images/228.png
6815	Akshan	images/229.png
6816	Urgot	images/230.png
6817	Annie	images/231.png
6818	LeBlanc	images/232.png
6819	Kayle	images/233.png
6820	Kayle	images/234.png
6821	Renekton	images/235.png
6822	Vex	images/236.png
6823	Xayah	images/237.png
6824	Master Yi	images/238.png
6825	Miss Fortune	images/239.png
6826	Jarvan IV	images/240.png
6827	Shyvana	images/241.png
6828	Lee Sin	images/242.png
6829	Tristana	images/243.png
6830	Lillia	images/244.png
6831	Nautilus	images/245.png
6832	Gragas	images/246.png
6833	Fiora	images/247.png
6834	Nocturne	images/248.png
6835	Aphelios	images/249.png
6836	Nami	images/250.png
6837	Urgot	images/251.png
6838	Leona	images/252.png
6839	Qiyana	images/253.png
6840	Zac	images/254.png
6841	Kennen	images/255.png
6842	Rumble	images/256.png
6843	Azir	images/257.png
6844	Jax	images/258.png
6845	Rengar	images/259.png
6846	Rengar	images/260.png
6847	Rengar	images/261.png
6848	Evelynn	images/262.png
6849	Ashe	images/263.png
6850	Seraphine	images/264.png
6851	Graves	images/265.png
6852	Bel'Veth	images/266.png
6853	Soraka	images/267.png
6854	Ezreal	images/268.png
6855	Ahri	images/269.png
6856	Warwick	images/270.png
6857	LeBlanc	images/271.png
6858	Yorick	images/272.png
6859	Veigar	images/273.png
6860	Naafiri	images/274.png
6861	Gragas	images/275.png
6862	Tristana	images/276.png
6863	Xerath	images/277.png
6864	Janna	images/278.png
6865	Sett	images/279.png
6866	Aurelion Sol	images/280.png
6867	Yone	images/281.png
6868	Kalista	images/282.png
6869	Urgot	images/283.png
6870	Cho'Gath	images/284.png
6871	Xayah	images/285.png
6872	Yuumi	images/286.png
6873	Cho'Gath	images/287.png
6874	Rell	images/288.png
6875	Rell	images/289.png
6876	Rell	images/290.png
6877	Rakan	images/291.png
6878	Yuumi	images/292.png
6879	Vayne	images/293.png
6880	Lux	images/294.png
6881	Milio	images/295.png
6882	Jinx	images/296.png
6883	Akali	images/297.png
6884	Samira	images/298.png
6885	Shyvana	images/299.png
6886	Jinx	images/300.png
6887	Rumble	images/301.png
6888	Anivia	images/302.png
6889	Irelia	images/303.png
6890	Thresh	images/304.png
6891	Sivir	images/305.png
6892	Singed	images/307.png
6893	Lee Sin	images/308.png
6894	Karma	images/309.png
6895	K'Sante	images/310.png
6896	Syndra	images/311.png
6897	Kassadin	images/312.png
6898	Nilah	images/313.png
6899	Ahri	images/314.png
6900	Skarner	images/315.png
6901	Volibear	images/316.png
6902	Rammus	images/317.png
6903	Ivern	images/318.png
6904	Ashe	images/319.png
6905	Anivia	images/320.png
6906	Trundle	images/321.png
6907	Lissandra	images/322.png
6908	Rell	images/323.png
6909	Rek'Sai	images/324.png
6910	Rek'Sai	images/325.png
6911	Shyvana	images/326.png
6912	Sejuani	images/327.png
6913	Nasus	images/328.png
6914	Rek'Sai	images/329.png
6915	Zyra	images/330.png
6916	Karma	images/331.png
6917	Corki	images/332.png
6918	Jinx	images/334.png
6919	Pyke	images/335.png
6920	Pyke	images/336.png
6921	Braum	images/337.png
6922	Lissandra	images/338.png
6923	Sejuani	images/339.png
6924	Anivia	images/340.png
6925	Rakan	images/341.png
6926	Lulu	images/342.png
6927	Viktor	images/343.png
6928	Sion	images/344.png
6929	Gnar	images/345.png
6930	Dr. Mundo	images/346.png
6931	Akshan	images/347.png
6932	Jarvan IV	images/348.png
6933	Fiora	images/349.png
6934	Rakan	images/350.png
6935	Pantheon	images/351.png
6936	Malphite	images/352.png
6937	Zyra	images/353.png
6938	Aphelios	images/354.png
6939	Viktor	images/355.png
6940	Malphite	images/357.png
6941	Teemo	images/358.png
6942	Heimerdinger	images/359.png
6943	Heimerdinger	images/360.png
6944	Varus	images/361.png
6945	Gwen	images/362.png
6946	Shaco	images/363.png
6947	Poppy	images/364.png
6948	Renata Glasc	images/365.png
6949	Gragas	images/366.png
6950	Quinn	images/367.png
6951	Viego	images/368.png
6952	Illaoi	images/369.png
6953	Evelynn	images/370.png
6954	Ashe	images/371.png
6955	Sett	images/372.png
6956	Briar	images/373.png
6957	Alistar	images/374.png
6958	Caitlyn	images/375.png
6959	Dr. Mundo	images/376.png
6960	Viego	images/377.png
6961	Quinn	images/378.png
6962	Lulu	images/379.png
6963	Vladimir	images/380.png
6964	Darius	images/381.png
6965	Galio	images/382.png
6966	Poppy	images/383.png
6967	Akshan	images/384.png
6968	Ziggs	images/385.png
6969	Heimerdinger	images/386.png
6970	Jayce	images/387.png
6971	Heimerdinger	images/388.png
6972	Corki	images/389.png
6973	Heimerdinger	images/390.png
6974	Camille	images/391.png
6975	Seraphine	images/392.png
6976	Master Yi	images/393.png
6977	Sylas	images/394.png
6978	Camille	images/395.png
6979	Camille	images/396.png
6980	Gnar	images/397.png
6981	Gnar	images/398.png
6982	Renata Glasc	images/399.png
6983	Naafiri	images/400.png
6984	Janna	images/401.png
6985	Elise	images/402.png
6986	Sona	images/403.png
6987	Gnar	images/404.png
6988	Gnar	images/405.png
6989	Jayce	images/406.png
6990	Kai'Sa	images/407.png
6991	Kog'Maw	images/408.png
6992	Lissandra	images/409.png
6993	Lissandra	images/410.png
6994	Lux	images/411.png
6995	Skarner	images/412.png
6996	Annie	images/413.png
6997	Mordekaiser	images/414.png
6998	Dr. Mundo	images/415.png
6999	Aatrox	images/416.png
7000	Samira	images/417.png
7001	Aphelios	images/418.png
7002	Warwick	images/419.png
7003	Neeko	images/420.png
7004	Karma	images/421.png
7005	Singed	images/422.png
7006	Karma	images/423.png
7007	Irelia	images/424.png
7008	Poppy	images/425.png
7009	Udyr	images/426.png
7010	Lee Sin	images/427.png
7011	Shaco	images/428.png
7012	Nidalee	images/429.png
7013	Nidalee	images/430.png
7014	Warwick	images/431.png
7015	Kled	images/432.png
7016	Nilah	images/433.png
7017	Nilah	images/434.png
7018	Garen	images/435.png
7019	Rumble	images/436.png
7020	Galio	images/437.png
7021	Poppy	images/438.png
7022	Shen	images/439.png
7023	Riven	images/440.png
7024	Kai'Sa	images/441.png
7025	Trundle	images/442.png
7026	Sylas	images/443.png
7027	Sett	images/444.png
7028	Kindred	images/445.png
7029	Yasuo	images/446.png
7030	Evelynn	images/447.png
7031	Senna	images/448.png
7032	Yorick	images/449.png
7033	Karthus	images/450.png
7034	Draven	images/451.png
7035	Kha'Zix	images/452.png
7036	Illaoi	images/453.png
7037	Jax	images/454.png
7038	Zac	images/455.png
7039	Renata Glasc	images/456.png
7040	Vel'Koz	images/457.png
7041	Lux	images/458.png
7042	Zeri	images/459.png
7043	Jayce	images/460.png
7044	Jayce	images/461.png
7045	Kennen	images/462.png
7046	Lucian	images/463.png
7047	Lillia	images/464.png
7048	Kog'Maw	images/465.png
7049	Zeri	images/466.png
7050	Ornn	images/467.png
7051	Zed	images/468.png
7052	Varus	images/469.png
7053	Twisted Fate	images/470.png
7054	Vex	images/471.png
7055	Miss Fortune	images/472.png
7056	Rakan	images/473.png
7057	Renata Glasc	images/474.png
7058	Lux	images/475.png
7059	Diana	images/476.png
7060	Fiora	images/477.png
7061	Bard	images/478.png
7062	Rell	images/479.png
7063	Miss Fortune	images/480.png
7064	Malzahar	images/481.png
7065	Blitzcrank	images/482.png
7066	Xerath	images/483.png
7067	Karma	images/484.png
7068	Kindred	images/485.png
7069	Kennen	images/486.png
7070	Jarvan IV	images/487.png
7071	Kalista	images/488.png
7072	Jax	images/489.png
7073	Dr. Mundo	images/490.png
7074	Master Yi	images/491.png
7075	Singed	images/492.png
7076	Ziggs	images/493.png
7077	Jayce	images/494.png
7078	Jayce	images/495.png
7079	Jayce	images/496.png
7080	Cassiopeia	images/497.png
7081	LeBlanc	images/498.png
7082	LeBlanc	images/499.png
7083	LeBlanc	images/500.png
7084	LeBlanc	images/501.png
7085	LeBlanc	images/502.png
7086	Corki	images/503.png
7087	Vex	images/504.png
7088	Tryndamere	images/505.png
7089	Annie	images/507.png
7090	Janna	images/508.png
7091	Diana	images/509.png
7092	Aphelios	images/510.png
7093	Aphelios	images/511.png
7094	Aphelios	images/512.png
7095	Aphelios	images/513.png
7096	Aphelios	images/514.png
7097	Aphelios	images/515.png
7098	Aphelios	images/516.png
7099	Diana	images/517.png
7100	Zoe	images/518.png
7101	Yone	images/519.png
7102	Pantheon	images/520.png
7103	Kindred	images/521.png
7104	Yorick	images/522.png
7105	Teemo	images/523.png
7106	Ezreal	images/524.png
7107	Maokai	images/525.png
7108	Gwen	images/526.png
7109	Kassadin	images/527.png
7110	Malzahar	images/528.png
7111	Elise	images/529.png
7112	Elise	images/530.png
7113	Swain	images/531.png
7114	Graves	images/532.png
7115	Vayne	images/533.png
7116	Fizz	images/534.png
7117	Wukong	images/535.png
7118	Talon	images/536.png
7119	Darius	images/537.png
7120	Darius	images/538.png
7121	Cassiopeia	images/539.png
7122	Singed	images/540.png
7123	Teemo	images/541.png
7124	K'Sante	images/542.png
7125	Kassadin	images/543.png
7126	Mordekaiser	images/544.png
7127	Sivir	images/545.png
7128	Aphelios	images/546.png
7129	Hecarim	images/547.png
7130	Ahri	images/548.png
7131	Vel'Koz	images/549.png
7132	Blitzcrank	images/550.png
7133	Ryze	images/551.png
7134	Zoe	images/552.png
7135	Diana	images/553.png
7136	Ekko	images/554.png
7137	Nocturne	images/555.png
7138	Gangplank	images/556.png
7139	K'Sante	images/557.png
7140	Akali	images/558.png
7141	Sejuani	images/559.png
7142	Garen	images/560.png
7143	Vex	images/561.png
7144	Sylas	images/562.png
7145	Cassiopeia	images/563.png
7146	Pyke	images/564.png
7147	Aphelios	images/565.png
7148	Ekko	images/566.png
7149	Veigar	images/567.png
7150	Corki	images/568.png
7151	Twisted Fate	images/569.png
7152	Kalista	images/570.png
7153	Varus	images/571.png
7154	Senna	images/572.png
7155	Lucian	images/573.png
7156	Brand	images/574.png
7157	Trundle	images/575.png
7158	Caitlyn	images/576.png
7159	Sett	images/577.png
7160	Lulu	images/578.png
7161	Vel'Koz	images/579.png
7162	Fizz	images/580.png
7163	Kled	images/581.png
7164	Singed	images/582.png
7165	Neeko	images/584.png
7166	Zoe	images/585.png
7167	Nidalee	images/586.png
7168	Jinx	images/587.png
7169	Gangplank	images/588.png
7170	Sona	images/589.png
7171	Blitzcrank	images/590.png
7172	Rammus	images/591.png
7173	Camille	images/592.png
7174	Katarina	images/593.png
7175	Rek'Sai	images/594.png
7176	Warwick	images/595.png
7177	Nidalee	images/596.png
7178	Nidalee	images/597.png
7179	Veigar	images/598.png
7180	Lux	images/599.png
7181	Illaoi	images/600.png
7182	Nidalee	images/601.png
7183	Yuumi	images/602.png
7184	Alistar	images/603.png
7185	Urgot	images/604.png
7186	Brand	images/605.png
7187	Annie	images/606.png
7188	Rek'Sai	images/607.png
7189	Rek'Sai	images/608.png
7190	Graves	images/609.png
7191	Kayle	images/610.png
7192	Gnar	images/611.png
7193	Olaf	images/612.png
7194	Talon	images/613.png
7195	Hecarim	images/614.png
7196	Zyra	images/615.png
7197	Ashe	images/616.png
7198	Tristana	images/617.png
7199	Elise	images/618.png
7200	Swain	images/619.png
7201	Zed	images/620.png
7202	Mordekaiser	images/621.png
7203	Ryze	images/622.png
7204	Fiddlesticks	images/623.png
7205	Kayn	images/624.png
7206	Kayn	images/625.png
7207	Kayn	images/626.png
7208	Anivia	images/627.png
7209	Olaf	images/628.png
7210	Renekton	images/629.png
7211	Jax	images/630.png
7212	Vi	images/631.png
7213	Lucian	images/632.png
7214	Gangplank	images/633.png
7215	Kalista	images/634.png
7216	Karma	images/635.png
7217	Karthus	images/636.png
7218	Lee Sin	images/637.png
7219	Zilean	images/638.png
7220	Sivir	images/639.png
7221	Kassadin	images/640.png
7222	Lissandra	images/641.png
7223	Fiora	images/642.png
7224	Nautilus	images/643.png
7225	Ezreal	images/644.png
7226	Xerath	images/645.png
7227	Sion	images/646.png
7228	Taliyah	images/647.png
7229	Blitzcrank	images/648.png
7230	Tristana	images/649.png
7231	Ivern	images/650.png
7232	Bel'Veth	images/651.png
7233	Qiyana	images/652.png
7234	Ryze	images/653.png
7235	Riven	images/654.png
7236	Cho'Gath	images/655.png
7237	Renekton	images/656.png
7238	Lee Sin	images/657.png
7239	Lee Sin	images/658.png
7240	Soraka	images/659.png
7241	Vladimir	images/660.png
7242	Maokai	images/661.png
7243	Maokai	images/662.png
7244	Ziggs	images/663.png
7245	Rengar	images/664.png
7246	Syndra	images/665.png
7247	Rumble	images/666.png
7248	Brand	images/667.png
7249	Ornn	images/668.png
7250	Fizz	images/669.png
7251	Kai'Sa	images/670.png
7252	Malphite	images/671.png
7253	Taliyah	images/672.png
7254	Kalista	images/673.png
7255	Aphelios	images/674.png
7256	Cassiopeia	images/675.png
7257	Aphelios	images/677.png
7258	Talon	images/678.png
7259	Shen	images/679.png
7260	Zed	images/680.png
7261	Kayn	images/681.png
7262	Kayn	images/682.png
7263	Kayn	images/683.png
7264	Vex	images/684.png
7265	Neeko	images/685.png
7266	Rell	images/686.png
7267	Yorick	images/687.png
7268	Leona	images/688.png
7269	Galio	images/689.png
7270	Pantheon	images/690.png
7271	Azir	images/691.png
7272	Jayce	images/692.png
7273	Xerath	images/693.png
7274	Ziggs	images/694.png
7275	Nocturne	images/695.png
7276	Katarina	images/696.png
7277	Akali	images/697.png
7278	Azir	images/698.png
7279	LeBlanc	images/699.png
7280	Vayne	images/701.png
7281	Aurelion Sol	images/702.png
7282	Viktor	images/703.png
7283	Nasus	images/704.png
7284	Kled	images/705.png
7285	Gwen	images/706.png
7286	Elise	images/707.png
7287	Volibear	images/708.png
7288	Quinn	images/709.png
7289	Zoe	images/710.png
7290	Renekton	images/711.png
7291	Kennen	images/712.png
7292	Nilah	images/713.png
7293	Graves	images/714.png
7294	Gwen	images/715.png
7295	Nunu & Willump	images/716.png
7296	Rammus	images/717.png
7297	Leona	images/718.png
7298	Sona	images/719.png
7299	Lee Sin	images/720.png
7300	Lee Sin	images/721.png
7301	Nasus	images/722.png
7302	Sion	images/723.png
7303	Morgana	images/724.png
7304	Morgana	images/725.png
7305	Yone	images/726.png
7306	Karma	images/727.png
7307	Viego	images/728.png
7308	Zeri	images/729.png
7309	Viego	images/730.png
7310	Ryze	images/731.png
7311	Sivir	images/732.png
7312	Zoe	images/733.png
7313	Elise	images/734.png
7314	Elise	images/735.png
7315	Elise	images/736.png
7316	Rammus	images/737.png
7317	Draven	images/738.png
7318	Tryndamere	images/739.png
7319	Yone	images/741.png
7320	Nasus	images/742.png
7321	Hecarim	images/743.png
7322	Ahri	images/744.png
7323	Shen	images/745.png
7324	Twitch	images/746.png
7325	Twisted Fate	images/747.png
7326	Seraphine	images/748.png
7327	Nautilus	images/749.png
7328	Draven	images/750.png
7329	Braum	images/751.png
7330	Shen	images/752.png
7331	Soraka	images/753.png
7332	Kayle	images/754.png
7333	Taric	images/755.png
7334	Blitzcrank	images/756.png
7335	Poppy	images/757.png
7336	Yasuo	images/758.png
7337	Wukong	images/760.png
7338	Volibear	images/761.png
7339	Zyra	images/762.png
7340	Zac	images/763.png
7341	Miss Fortune	images/764.png
7342	Trundle	images/768.png
7343	Annie	images/769.png
7344	Leona	images/770.png
7345	Jinx	images/771.png
7346	Kai'Sa	images/772.png
7347	Qiyana	images/773.png
7348	Nami	images/774.png
7349	Seraphine	images/775.png
7350	Yasuo	images/776.png
7351	Nidalee	images/777.png
7352	Lillia	images/778.png
7353	Jinx	images/779.png
7354	Camille	images/780.png
7355	Janna	images/781.png
7356	Nidalee	images/782.png
7357	Neeko	images/783.png
7358	Amumu	images/784.png
7359	Kha'Zix	images/785.png
7360	Vel'Koz	images/786.png
7361	Bard	images/787.png
7362	Lee Sin	images/788.png
7363	Lee Sin	images/789.png
7364	Illaoi	images/790.png
7365	Qiyana	images/791.png
7366	Fiddlesticks	images/792.png
7367	Illaoi	images/793.png
7368	Thresh	images/794.png
7369	Naafiri	images/795.png
7370	Lucian	images/796.png
7371	Aatrox	images/797.png
7372	Kayn	images/798.png
7373	Kayn	images/799.png
7374	Kayn	images/800.png
7375	Rumble	images/801.png
7376	Aphelios	images/802.png
7377	Rakan	images/803.png
7378	Volibear	images/804.png
7379	Sett	images/805.png
7380	Tahm Kench	images/806.png
7381	Gwen	images/807.png
7382	Taliyah	images/808.png
7383	Xin Zhao	images/809.png
7384	Rengar	images/810.png
7385	Malphite	images/811.png
7386	Jayce	images/812.png
7387	Jayce	images/813.png
7388	Kennen	images/814.png
7389	Volibear	images/815.png
7390	Nami	images/816.png
7391	Nami	images/817.png
7392	Vladimir	images/818.png
7393	Zilean	images/819.png
7394	Zilean	images/820.png
7395	Zilean	images/821.png
7396	Ekko	images/822.png
7397	Nautilus	images/823.png
7398	Jayce	images/824.png
7399	Jayce	images/825.png
7400	Tahm Kench	images/826.png
7401	Morgana	images/827.png
7402	Olaf	images/828.png
7403	Teemo	images/829.png
7404	Alistar	images/830.png
7405	Syndra	images/831.png
7406	Vladimir	images/832.png
7407	Bard	images/833.png
7408	Gangplank	images/834.png
7409	Ivern	images/835.png
7410	Alistar	images/836.png
7411	Ezreal	images/837.png
7412	Vayne	images/838.png
7413	Rek'Sai	images/839.png
7414	Shen	images/840.png
7415	Akali	images/841.png
7416	Shyvana	images/842.png
7417	Cassiopeia	images/843.png
7418	Maokai	images/844.png
7419	Shaco	images/845.png
7420	Milio	images/846.png
7421	Zeri	images/847.png
7422	Nocturne	images/848.png
7423	Aatrox	images/849.png
7424	Kayn	images/850.png
7425	Kayn	images/851.png
7426	Kayn	images/852.png
7427	Braum	images/853.png
7428	Alistar	images/854.png
7429	Rek'Sai	images/855.png
7430	Olaf	images/856.png
7431	Tryndamere	images/857.png
7432	Syndra	images/858.png
7433	Taliyah	images/859.png
7434	Rengar	images/860.png
7435	Kha'Zix	images/861.png
7436	Nocturne	images/862.png
7437	Zac	images/863.png
7438	Malphite	images/864.png
7439	Sion	images/865.png
7440	Heimerdinger	images/866.png
7441	Fizz	images/867.png
7442	Corki	images/868.png
7443	Riven	images/869.png
7444	Irelia	images/870.png
7445	Quinn	images/871.png
7446	Vi	images/872.png
7447	Twitch	images/873.png
7448	Elise	images/874.png
7449	Kled	images/875.png
7450	Swain	images/876.png
7451	Kha'Zix	images/877.png
7452	Kog'Maw	images/878.png
7453	Vel'Koz	images/879.png
7454	Rek'Sai	images/880.png
7455	Kai'Sa	images/881.png
7456	Malzahar	images/882.png
7457	Kha'Zix	images/883.png
7458	Kassadin	images/884.png
7459	Bel'Veth	images/885.png
7460	Malzahar	images/886.png
7461	Elise	images/887.png
7462	Elise	images/888.png
7463	Ornn	images/889.png
7464	Ashe	images/890.png
7465	Katarina	images/891.png
7466	Cho'Gath	images/892.png
7467	Camille	images/893.png
7468	Karthus	images/894.png
7469	Gnar	images/895.png
7470	Milio	images/896.png
7471	Hecarim	images/897.png
7472	Wukong	images/898.png
7473	Lillia	images/900.png
7474	Yone	images/901.png
7475	Yasuo	images/902.png
7476	Naafiri	images/903.png
7477	Taliyah	images/904.png
7478	Lulu	images/905.png
7479	Evelynn	images/906.png
7480	Draven	images/907.png
7481	Jhin	images/908.png
7482	Twisted Fate	images/909.png
7483	Lulu	images/910.png
7484	Samira	images/911.png
7485	Udyr	images/912.png
7486	Xin Zhao	images/913.png
7487	Riven	images/914.png
7488	Yasuo	images/915.png
7489	Galio	images/916.png
7490	Udyr	images/917.png
7491	Braum	images/918.png
7492	Sejuani	images/919.png
7493	Soraka	images/920.png
7494	Nasus	images/921.png
7495	Kindred	images/922.png
7496	Aatrox	images/923.png
7497	Master Yi	images/924.png
7498	Caitlyn	images/925.png
7499	Yuumi	images/926.png
7500	Ekko	images/927.png
7501	Jinx	images/928.png
7502	Leona	images/929.png
7503	Janna	images/930.png
7504	Yuumi	images/931.png
\.


--
-- Data for Name: champions; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.champions (name, gender, "position", species, resource, range_type, regions, release_year) FROM stdin;
Aatrox	Male	Top	Darkin	Manaless	Melee	Runeterra,  Shurima	2013
Ahri	Female	Middle	Vastayan	Mana	Ranged	Ionia	2011
Akali	Female	Middle,  Top	Human	Energy	Melee	Ionia	2010
Akshan	Male	Middle,  Top	Human	Mana	Ranged	Shurima	2021
Alistar	Male	Support	Minotaur	Mana	Melee	Runeterra	2009
Amumu	Male	Jungle,  Support	Undead,  Yordle	Mana	Melee	Shurima	2009
Anivia	Female	Middle	God,  Spirit	Mana	Ranged	Freljord	2009
Annie	Female	Middle,  Support	Human,  Magicborn	Mana	Ranged	Noxus,  Runeterra	2009
Aphelios	Male	Bottom	Human,  Spiritualist	Mana	Ranged	Targon	2019
Ashe	Female	Bottom,  Support	Human,  Iceborn	Mana	Ranged	Freljord	2009
Aurelion Sol	Male	Middle	Celestial,  Dragon	Mana	Ranged	Runeterra,  Targon	2016
Azir	Male	Middle	God-Warrior	Mana	Ranged	Shurima	2014
Bard	Male	Support	Celestial	Mana	Ranged	Runeterra	2015
Bel'Veth	Female	Jungle	Void-Being	Manaless	Melee	Void	2022
Blitzcrank	Other	Support	Golem	Mana	Melee	Zaun	2009
Brand	Male	Support	Human,  Magically Altered	Mana	Ranged	Freljord,  Runeterra	2011
Braum	Male	Support	Human,  Iceborn	Mana	Melee	Freljord	2014
Briar	Female	Jungle	Golem	Health costs	Melee	Noxus	2023
Caitlyn	Female	Bottom	Human	Mana	Ranged	Piltover	2011
Camille	Female	Top	Cyborg,  Human	Mana	Melee	Piltover	2016
Cassiopeia	Female	Middle	Human,  Magically Altered	Mana	Ranged	Noxus,  Shurima	2010
Cho'Gath	Male	Top	Void-Being	Mana	Melee	Void	2009
Corki	Male	Middle	Yordle	Mana	Ranged	Bandle City,  Piltover	2009
Darius	Male	Top	Human	Mana	Melee	Noxus	2012
Diana	Female	Jungle,  Middle	Aspect,  Human	Mana	Melee	Targon	2012
Dr. Mundo	Male	Top	Chemically Altered,  Human	Health costs	Melee	Zaun	2009
Draven	Male	Bottom	Human	Mana	Ranged	Noxus	2012
Ekko	Male	Jungle,  Middle	Human	Mana	Melee	Zaun	2015
Elise	Female	Jungle	Human,  Magically Altered	Mana	Melee,  Ranged	Noxus,  Shadow Isles	2012
Evelynn	Female	Jungle	Demon,  Spirit	Mana	Melee	Runeterra	2009
Ezreal	Male	Bottom	Human,  Magicborn	Mana	Ranged	Piltover	2010
Fiddlesticks	Other	Jungle	Demon,  Spirit	Mana	Ranged	Runeterra	2009
Fiora	Female	Top	Human	Mana	Melee	Demacia	2012
Fizz	Male	Middle	Yordle	Mana	Melee	Bilgewater	2011
Miss Fortune	Female	Bottom	Human	Mana	Ranged	Bilgewater	2010
Twisted Fate	Male	Middle	Human,  Magicborn	Mana	Ranged	Bilgewater	2009
Galio	Male	Middle,  Support	Golem	Mana	Melee	Demacia	2010
Gangplank	Male	Top	Human	Mana	Melee	Bilgewater	2009
Garen	Male	Top	Human	Manaless	Melee	Demacia	2010
Gnar	Male	Top	Yordle	Rage	Melee,  Ranged	Freljord	2014
Gragas	Male	Jungle,  Top	Human	Mana	Melee	Freljord	2010
Graves	Male	Jungle	Human	Mana	Ranged	Bilgewater	2011
Gwen	Female	Top	Human,  Magically Altered	Mana	Melee	Camavor,  Shadow Isles	2021
Renata Glasc	Female	Support	Chemically Altered,  Human	Mana	Ranged	Zaun	2022
Hecarim	Male	Jungle	Undead	Mana	Melee	Camavor,  Shadow Isles	2012
Heimerdinger	Male	Middle,  Support	Yordle	Mana	Ranged	Piltover	2009
Illaoi	Female	Top	Human,  Spiritualist	Mana	Melee	Bilgewater	2015
Irelia	Female	Middle,  Top	Human,  Spiritualist	Mana	Melee	Ionia	2010
Ivern	Male	Jungle	Human,  Magically Altered	Mana	Ranged	Freljord,  Ionia	2016
Jarvan IV	Male	Jungle	Human	Mana	Melee	Demacia	2011
Janna	Female	Support	God,  Spirit	Mana	Ranged	Shurima,  Zaun	2009
Jax	Male	Jungle,  Top	Unknown	Mana	Melee	Icathia,  Runeterra,  Shurima	2009
Jayce	Male	Middle,  Top	Human	Mana	Melee,  Ranged	Piltover	2012
Jhin	Male	Bottom	Human,  Spiritualist	Mana	Ranged	Ionia	2016
Jinx	Female	Bottom	Chemically Altered,  Human	Mana	Ranged	Zaun	2013
K'Sante	Male	Top	Human	Mana	Melee	Shurima	2022
Kai'Sa	Female	Bottom	Human,  Void-Being	Mana	Ranged	Shurima,  Void	2018
Kalista	Female	Bottom	Undead	Mana	Ranged	Camavor,  Shadow Isles	2014
Karma	Female	Support	Human,  Spiritualist	Mana	Ranged	Ionia	2011
Karthus	Male	Jungle	Undead	Mana	Ranged	Noxus,  Shadow Isles	2009
Kassadin	Male	Middle	Human,  Void-Being	Mana	Melee	Shurima,  Void	2009
Katarina	Female	Middle	Human	Manaless	Melee	Noxus	2009
Kayle	Female	Top	Aspect,  Human,  Magically Altered	Mana	Melee,  Ranged	Demacia,  Targon	2009
Kayn	Male	Jungle	Darkin,  Human,  Magically Altered	Mana	Melee	Ionia,  Noxus,  Runeterra,  Shurima	2017
Kennen	Male	Top	Yordle	Energy	Ranged	Ionia	2010
Kha'Zix	Male	Jungle	Void-Being	Mana	Melee	Void	2012
Kindred	Other	Jungle	God,  Spirit	Mana	Ranged	Runeterra	2015
Kled	Male	Top	Yordle	Courage	Melee	Noxus	2016
Kog'Maw	Male	Bottom	Void-Being	Mana	Ranged	Void	2010
Tahm Kench	Male	Support,  Top	Demon,  Spirit	Mana	Melee	Bilgewater,  Runeterra	2015
LeBlanc	Female	Middle	Human,  Magically Altered	Mana	Ranged	Noxus	2010
Lee Sin	Male	Jungle	Human,  Spiritualist	Energy	Melee	Ionia	2011
Leona	Female	Support	Aspect,  Human	Mana	Melee	Targon	2011
Lillia	Female	Jungle	Spirit	Mana	Melee	Ionia	2020
Lissandra	Female	Middle	Human,  Iceborn	Mana	Ranged	Freljord	2013
Lucian	Male	Bottom	Human	Mana	Ranged	Demacia,  Shadow Isles	2013
Lulu	Female	Support	Yordle	Mana	Ranged	Bandle City	2012
Lux	Female	Middle,  Support	Human,  Magicborn	Mana	Ranged	Demacia	2010
Malphite	Male	Top	Golem	Mana	Melee	Ixtal,  Shurima	2009
Malzahar	Male	Middle	Human,  Void-Being	Mana	Ranged	Shurima,  Void	2010
Maokai	Male	Jungle,  Support	Spirit	Mana	Melee	Shadow Isles	2011
Master Yi	Male	Jungle	Human,  Spiritualist	Mana	Melee	Ionia	2009
Milio	Male	Support	Human,  Magicborn	Mana	Ranged	Ixtal	2023
Mordekaiser	Male	Top	Revenant	Shield	Melee	Noxus	2010
Morgana	Female	Support	Aspect,  Human,  Magically Altered	Mana	Ranged	Demacia,  Targon	2009
Naafiri	Female	Middle	Darkin,  Dog	Mana	Melee	Shurima	2023
Nami	Female	Support	Vastayan	Mana	Ranged	Runeterra	2012
Nasus	Male	Top	God-Warrior	Mana	Melee	Shurima	2009
Nautilus	Male	Support	Revenant	Mana	Melee	Bilgewater	2012
Neeko	Female	Middle,  Support	Vastayan	Mana	Ranged	Ixtal	2018
Nidalee	Female	Jungle	Human,  Spiritualist	Mana	Melee,  Ranged	Ixtal	2009
Nilah	Female	Bottom	Human,  Magically Altered	Mana	Melee	Bilgewater	2022
Nocturne	Male	Jungle	Demon,  Spirit	Mana	Melee	Runeterra	2011
Nunu & Willump	Male	Jungle	Human,  Yeti	Mana	Melee	Freljord	2009
Olaf	Male	Jungle,  Top	Human,  Iceborn	Mana	Melee	Freljord	2010
Orianna	Female	Middle	Golem	Mana	Ranged	Piltover	2011
Ornn	Male	Top	God,  Spirit	Mana	Melee	Freljord	2017
Pantheon	Male	Middle,  Support,  Top	Aspect,  Human	Mana	Melee	Targon	2010
Poppy	Female	Jungle,  Top	Yordle	Mana	Melee	Demacia	2010
Pyke	Male	Support	Revenant	Mana	Melee	Bilgewater	2018
Qiyana	Female	Middle	Human,  Magicborn	Mana	Melee	Ixtal	2019
Quinn	Female	Top	Human	Mana	Ranged	Demacia	2013
Rakan	Male	Support	Vastayan	Mana	Melee	Ionia	2017
Rek'Sai	Female	Jungle	Void-Being	Rage	Melee	Shurima,  Void	2014
Rell	Female	Support	Human,  Magically Altered,  Magicborn	Mana	Melee	Noxus	2020
Renekton	Male	Top	God-Warrior	Fury	Melee	Shurima	2011
Riven	Female	Top	Human	Manaless	Melee	Ionia,  Noxus	2011
Rumble	Male	Middle,  Top	Yordle	Heat	Melee	Bandle City	2011
Ryze	Male	Middle,  Top	Human,  Magically Altered	Mana	Ranged	Runeterra	2009
Rammus	Male	Jungle	God-Warrior	Mana	Melee	Shurima	2009
Rengar	Male	Jungle,  Top	Vastayan	Ferocity	Melee	Ixtal,  Shurima	2012
Samira	Female	Bottom	Human	Mana	Ranged	Noxus,  Shurima	2020
Sejuani	Female	Jungle	Human,  Iceborn	Mana	Melee	Freljord	2012
Senna	Female	Support	Human,  Undead	Mana	Ranged	Shadow Isles	2019
Seraphine	Female	Support	Human,  Magicborn	Mana	Ranged	Piltover,  Zaun	2020
Sett	Male	Top	Human,  Vastayan	Grit	Melee	Ionia	2020
Shaco	Male	Jungle	Spirit	Mana	Melee	Runeterra	2009
Shen	Male	Top	Human,  Spiritualist	Energy	Melee	Ionia	2010
Shyvana	Female	Jungle	Dragon,  Magically Altered	Fury	Melee	Demacia	2011
Singed	Male	Top	Chemically Altered,  Human	Mana	Melee	Piltover,  Zaun	2009
Sion	Male	Top	Revenant	Mana	Melee	Noxus	2009
Sivir	Female	Bottom	Human	Mana	Ranged	Shurima	2009
Skarner	Male	Jungle	Brackern	Mana	Melee	Shurima	2011
Sona	Female	Support	Human,  Magicborn	Mana	Ranged	Demacia,  Ionia	2010
Soraka	Female	Support	Celestial	Mana	Ranged	Ionia,  Targon	2009
Swain	Male	Middle,  Support	Human,  Magically Altered	Mana	Ranged	Noxus	2010
Sylas	Male	Middle	Human,  Magicborn	Mana	Melee	Demacia,  Freljord	2019
Syndra	Female	Middle	Human,  Magicborn	Mana	Ranged	Ionia	2012
Taliyah	Female	Jungle,  Middle	Human,  Magicborn	Mana	Ranged	Shurima	2016
Talon	Male	Jungle,  Middle	Human	Mana	Melee	Noxus	2011
Taric	Male	Support	Aspect,  Human	Mana	Melee	Demacia,  Targon	2009
Teemo	Male	Top	Yordle	Mana	Ranged	Bandle City	2009
Thresh	Male	Support	Undead	Mana	Ranged	Shadow Isles	2013
Tristana	Female	Bottom	Yordle	Mana	Ranged	Bandle City	2009
Tryndamere	Male	Top	Human,  Magically Altered	Fury	Melee	Freljord	2009
Twitch	Male	Bottom	Chemically Altered,  Rat	Mana	Ranged	Zaun	2009
Trundle	Male	Jungle,  Top	Iceborn,  Troll	Mana	Melee	Freljord	2010
Udyr	Male	Jungle,  Top	Human,  Spiritualist	Mana	Melee	Freljord,  Ionia	2009
Urgot	Male	Top	Chemically Altered,  Cyborg,  Human	Mana	Ranged	Noxus,  Zaun	2010
Varus	Male	Bottom,  Middle	Darkin,  Human	Mana	Ranged	Ionia,  Runeterra,  Shurima	2012
Vayne	Female	Bottom,  Top	Human	Mana	Ranged	Demacia	2011
Veigar	Male	Middle	Yordle	Mana	Ranged	Bandle City,  Runeterra	2009
Vel'Koz	Male	Middle,  Support	Void-Being	Mana	Ranged	Void	2014
Vex	Female	Middle	Yordle	Mana	Ranged	Bandle City,  Shadow Isles	2021
Vi	Female	Jungle	Human	Mana	Melee	Piltover,  Zaun	2012
Viego	Male	Jungle	Undead	Manaless	Melee	Camavor,  Shadow Isles	2021
Viktor	Male	Middle	Cyborg,  Human	Mana	Ranged	Piltover,  Zaun	2011
Vladimir	Male	Middle	Human,  Magically Altered	Bloodthirst	Ranged	Camavor,  Noxus,  Shadow Isles	2010
Volibear	Male	Jungle,  Top	God,  Spirit	Mana	Melee	Freljord	2011
Warwick	Male	Jungle,  Top	Chemically Altered,  Cyborg,  Human	Mana	Melee	Zaun	2009
Xayah	Female	Bottom	Vastayan	Mana	Ranged	Ionia	2017
Xerath	Male	Middle,  Support	God-Warrior	Mana	Ranged	Shurima	2011
Xin Zhao	Male	Jungle	Human	Mana	Melee	Demacia,  Ionia,  Noxus	2010
Yasuo	Male	Middle	Human,  Magicborn	Flow	Melee	Ionia	2013
Yone	Male	Middle,  Top	Human,  Magically Altered	Manaless	Melee	Ionia	2020
Yorick	Male	Top	Human,  Magically Altered	Mana	Melee	Shadow Isles	2011
Yuumi	Female	Support	Cat,  Magically Altered	Mana	Ranged	Bandle City	2019
Zac	Male	Jungle	Golem	Health costs	Melee	Zaun	2013
Zed	Male	Middle	Human,  Magically Altered	Energy	Melee	Ionia	2012
Zeri	Female	Bottom	Human,  Magicborn	Mana	Ranged	Zaun	2022
Ziggs	Male	Bottom,  Middle	Yordle	Mana	Ranged	Zaun	2012
Zilean	Male	Support	Human,  Magicborn	Mana	Ranged	Icathia,  Runeterra,  Shurima	2009
Zoe	Female	Middle	Aspect,  Human	Mana	Ranged	Targon	2017
Zyra	Female	Support	Unknown	Mana	Ranged	Ixtal	2012
Wukong	Male	Jungle,  Top	Vastayan	Mana	Melee	Ionia	2011
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.users ("UserID", "Username", "Guessed Champions", "Guessed Abilities") FROM stdin;
541345035	divm20	0	0
472148530	dwenby	54	12
\.


--
-- Name: abilities_AbilityID_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public."abilities_AbilityID_seq"', 7504, true);


--
-- Name: users Users_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY ("UserID");


--
-- Name: abilities abilities_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT abilities_pkey PRIMARY KEY ("AbilityID");


--
-- Name: champions champions_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.champions
    ADD CONSTRAINT champions_pkey PRIMARY KEY (name);


--
-- Name: abilities Champion; Type: FK CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.abilities
    ADD CONSTRAINT "Champion" FOREIGN KEY ("Champion") REFERENCES public.champions(name) NOT VALID;


--
-- PostgreSQL database dump complete
--

