--
-- PostgreSQL database dump
--

-- Dumped from database version 10.3 (Ubuntu 10.3-1.pgdg16.04+1)
-- Dumped by pg_dump version 10.3 (Ubuntu 10.3-1.pgdg16.04+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


SET default_tablespace = '';

SET default_with_oids = false;

--
-- Name: coin; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.coin (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    url text NOT NULL,
    price character varying(255) NOT NULL
);


ALTER TABLE public.coin OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE; Schema: public; Owner: postgres
--

CREATE SEQUENCE public.coin_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.coin_id_seq OWNER TO postgres;

--
-- Name: coin_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: postgres
--

ALTER SEQUENCE public.coin_id_seq OWNED BY public.coin.id;


--
-- Name: coin id; Type: DEFAULT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin ALTER COLUMN id SET DEFAULT nextval('public.coin_id_seq'::regclass);


--
-- Data for Name: coin; Type: TABLE DATA; Schema: public; Owner: postgres
--

COPY public.coin (id, name, url, price) FROM stdin;
1	Bitcoin	https://coinmarketcap.com/currencies/bitcoin/	7478.07
2	Ethereum	https://coinmarketcap.com/currencies/ethereum/	408.34
3	Ripple	https://coinmarketcap.com/currencies/ripple/	0.538424
4	Bitcoin Cash	https://coinmarketcap.com/currencies/bitcoin-cash/	749.644
5	Litecoin	https://coinmarketcap.com/currencies/litecoin/	120.017
6	EOS	https://coinmarketcap.com/currencies/eos/	6.18206
7	Cardano	https://coinmarketcap.com/currencies/cardano/	0.153351
8	Stellar	https://coinmarketcap.com/currencies/stellar/	0.199647
9	NEO	https://coinmarketcap.com/currencies/neo/	53.5626
10	TRON	https://coinmarketcap.com/currencies/tron/	0.0491609
11	IOTA	https://coinmarketcap.com/currencies/iota/	1.11402
12	Monero	https://coinmarketcap.com/currencies/monero/	184.594
13	Dash	https://coinmarketcap.com/currencies/dash/	333.381
14	Tether	https://coinmarketcap.com/currencies/tether/	0.999267
15	NEM	https://coinmarketcap.com/currencies/nem/	0.232617
16	Ethereum Classic	https://coinmarketcap.com/currencies/ethereum-classic/	15.3845
17	VeChain	https://coinmarketcap.com/currencies/vechain/	2.67125
18	Qtum	https://coinmarketcap.com/currencies/qtum/	14.8401
19	Binance Coin	https://coinmarketcap.com/currencies/binance-coin/	10.8156
20	ICON	https://coinmarketcap.com/currencies/icon/	2.52441
21	OmiseGO	https://coinmarketcap.com/currencies/omisego/	8.97287
22	Lisk	https://coinmarketcap.com/currencies/lisk/	8.46064
23	Bitcoin Gold	https://coinmarketcap.com/currencies/bitcoin-gold/	47.5874
24	Nano	https://coinmarketcap.com/currencies/nano/	5.90236
25	Zcash	https://coinmarketcap.com/currencies/zcash/	197.429
26	Verge	https://coinmarketcap.com/currencies/verge/	0.03947
27	Ontology	https://coinmarketcap.com/currencies/ontology/	2.34547
28	DigixDAO	https://coinmarketcap.com/currencies/digixdao/	260.516
29	Populous	https://coinmarketcap.com/currencies/populous/	13.4302
30	Bytom	https://coinmarketcap.com/currencies/bytom/	0.458589
31	Steem	https://coinmarketcap.com/currencies/steem/	1.73154
32	Bytecoin	https://coinmarketcap.com/currencies/bytecoin-bcn/	0.00228036
33	Stratis	https://coinmarketcap.com/currencies/stratis/	4.07677
34	Siacoin	https://coinmarketcap.com/currencies/siacoin/	0.0117832
35	Waves	https://coinmarketcap.com/currencies/waves/	3.89527
36	RChain	https://coinmarketcap.com/currencies/rchain/	1.02158
37	Bitcoin Diamond	https://coinmarketcap.com/currencies/bitcoin-diamond/	2.34453
38	BitShares	https://coinmarketcap.com/currencies/bitshares/	0.133634
39	Aeternity	https://coinmarketcap.com/currencies/aeternity/	1.49385
40	Maker	https://coinmarketcap.com/currencies/maker/	545.833
41	Dogecoin	https://coinmarketcap.com/currencies/dogecoin/	0.00291487
42	Augur	https://coinmarketcap.com/currencies/augur/	28.3508
43	Status	https://coinmarketcap.com/currencies/status/	0.0890986
44	Decred	https://coinmarketcap.com/currencies/decred/	42.8668
45	Zilliqa	https://coinmarketcap.com/currencies/zilliqa/	0.045439
46	0x	https://coinmarketcap.com/currencies/0x/	0.553748
47	Waltonchain	https://coinmarketcap.com/currencies/waltonchain/	11.5478
48	Komodo	https://coinmarketcap.com/currencies/komodo/	2.52491
49	Veritaseum	https://coinmarketcap.com/currencies/veritaseum/	127.671
50	Aion	https://coinmarketcap.com/currencies/aion/	2.17126
51	Hshare	https://coinmarketcap.com/currencies/hshare/	5.79641
52	Ardor	https://coinmarketcap.com/currencies/ardor/	0.238124
53	Cryptonex	https://coinmarketcap.com/currencies/cryptonex/	5.16013
54	Loopring	https://coinmarketcap.com/currencies/loopring/	0.3982
55	Ark	https://coinmarketcap.com/currencies/ark/	2.20771
56	KuCoin Shares	https://coinmarketcap.com/currencies/kucoin-shares/	2.45032
57	Nebulas	https://coinmarketcap.com/currencies/nebulas-token/	6.21631
58	IOStoken	https://coinmarketcap.com/currencies/iostoken/	0.026155
59	QASH	https://coinmarketcap.com/currencies/qash/	0.620139
60	PIVX	https://coinmarketcap.com/currencies/pivx/	3.85122
61	Basic Attenti...	https://coinmarketcap.com/currencies/basic-attention-token/	0.201949
62	DigiByte	https://coinmarketcap.com/currencies/digibyte/	0.0192532
63	Golem	https://coinmarketcap.com/currencies/golem-network-tokens/	0.22501
64	MonaCoin	https://coinmarketcap.com/currencies/monacoin/	3.20311
65	Factom	https://coinmarketcap.com/currencies/factom/	20.7493
66	Ethos	https://coinmarketcap.com/currencies/ethos/	2.2757
67	Syscoin	https://coinmarketcap.com/currencies/syscoin/	0.32065
68	Gas	https://coinmarketcap.com/currencies/gas/	17.0448
69	Storm	https://coinmarketcap.com/currencies/storm/	0.0408157
70	Revain	https://coinmarketcap.com/currencies/revain/	0.895499
71	GXChain	https://coinmarketcap.com/currencies/gxchain/	2.62234
72	FunFair	https://coinmarketcap.com/currencies/funfair/	0.0340418
73	Dragonchain	https://coinmarketcap.com/currencies/dragonchain/	0.657251
74	Electroneum	https://coinmarketcap.com/currencies/electroneum/	0.022291
75	Kyber Network	https://coinmarketcap.com/currencies/kyber-network/	1.06699
76	XPA	https://coinmarketcap.com/currencies/xpa/	0.136976
77	aelf	https://coinmarketcap.com/currencies/aelf/	0.547418
78	ZCoin	https://coinmarketcap.com/currencies/zcoin/	30.7439
79	Kin	https://coinmarketcap.com/currencies/kin/	0.000170962
80	Substratum	https://coinmarketcap.com/currencies/substratum/	0.362314
81	SALT	https://coinmarketcap.com/currencies/salt/	2.29103
82	Request Network	https://coinmarketcap.com/currencies/request-network/	0.191743
83	Enigma	https://coinmarketcap.com/currencies/enigma-project/	1.67138
84	ReddCoin	https://coinmarketcap.com/currencies/reddcoin/	0.00432236
85	Nucleus Vision	https://coinmarketcap.com/currencies/nucleus-vision/	0.0306114
86	Nxt	https://coinmarketcap.com/currencies/nxt/	0.118585
87	Mithril	https://coinmarketcap.com/currencies/mithril/	0.392087
88	Byteball Bytes	https://coinmarketcap.com/currencies/byteball/	172.569
89	MaidSafeCoin	https://coinmarketcap.com/currencies/maidsafecoin/	0.245367
90	Power Ledger	https://coinmarketcap.com/currencies/power-ledger/	0.304026
91	Neblio	https://coinmarketcap.com/currencies/neblio/	8.53825
92	Emercoin	https://coinmarketcap.com/currencies/emercoin/	2.65797
93	Dent	https://coinmarketcap.com/currencies/dent/	0.0101916
94	ChainLink	https://coinmarketcap.com/currencies/chainlink/	0.30393
95	TenX	https://coinmarketcap.com/currencies/tenx/	0.971538
96	Skycoin	https://coinmarketcap.com/currencies/skycoin/	12.9621
97	Bancor	https://coinmarketcap.com/currencies/bancor/	2.32696
98	Dentacoin	https://coinmarketcap.com/currencies/dentacoin/	0.000298722
99	Credits	https://coinmarketcap.com/currencies/credits/	0.704615
100	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.0645046
101	Cindicator	https://coinmarketcap.com/currencies/cindicator/	0.0643578
102	Achain	https://coinmarketcap.com/currencies/achain/	0.199064
103	Metal	https://coinmarketcap.com/currencies/metal/	4.1233
104	Storj	https://coinmarketcap.com/currencies/storj/	0.687385
105	Genaro Network	https://coinmarketcap.com/currencies/genaro-network/	0.368793
106	Particl	https://coinmarketcap.com/currencies/particl/	9.72419
107	MinexCoin	https://coinmarketcap.com/currencies/minexcoin/	24.2965
108	Genesis Vision	https://coinmarketcap.com/currencies/genesis-vision/	22.9115
109	Enjin Coin	https://coinmarketcap.com/currencies/enjin-coin/	0.112794
110	Iconomi	https://coinmarketcap.com/currencies/iconomi/	0.839731
111	Nexus	https://coinmarketcap.com/currencies/nexus/	1.47588
112	Cube	https://coinmarketcap.com/currencies/cube/	0.0130567
113	POA Network	https://coinmarketcap.com/currencies/poa-network/	0.398616
114	Pillar	https://coinmarketcap.com/currencies/pillar/	0.350893
115	Bitcore	https://coinmarketcap.com/currencies/bitcore/	6.14794
116	WAX	https://coinmarketcap.com/currencies/wax/	0.159803
117	Polymath	https://coinmarketcap.com/currencies/polymath-network/	0.327477
118	Aragon	https://coinmarketcap.com/currencies/aragon/	2.97976
119	Vertcoin	https://coinmarketcap.com/currencies/vertcoin/	1.79368
120	Raiden Networ...	https://coinmarketcap.com/currencies/raiden-network-token/	1.55301
121	Civic	https://coinmarketcap.com/currencies/civic/	0.225676
122	Decentraland	https://coinmarketcap.com/currencies/decentraland/	0.0729902
123	Dynamic Tradi...	https://coinmarketcap.com/currencies/dynamic-trading-rights/	0.0639979
124	Blocknet	https://coinmarketcap.com/currencies/blocknet/	14.5995
125	GameCredits	https://coinmarketcap.com/currencies/gamecredits/	1.1471
126	iExec RLC	https://coinmarketcap.com/currencies/rlc/	0.907021
127	Theta Token	https://coinmarketcap.com/currencies/theta-token/	0.123365
128	Oyster	https://coinmarketcap.com/currencies/oyster/	1.00492
129	Quantstamp	https://coinmarketcap.com/currencies/quantstamp/	0.115559
130	BitcoinDark	https://coinmarketcap.com/currencies/bitcoindark/	54.3014
131	Matrix AI Net...	https://coinmarketcap.com/currencies/matrix-ai-network/	0.461535
132	Santiment Net...	https://coinmarketcap.com/currencies/santiment/	1.09104
133	Po.et	https://coinmarketcap.com/currencies/poet/	0.0303617
134	Time New Bank	https://coinmarketcap.com/currencies/time-new-bank/	0.0300131
135	SingularityNET	https://coinmarketcap.com/currencies/singularitynet/	0.129634
136	Gnosis	https://coinmarketcap.com/currencies/gnosis-gno/	60.9887
137	CyberMiles	https://coinmarketcap.com/currencies/cybermiles/	0.111694
138	Monaco	https://coinmarketcap.com/currencies/monaco/	4.98515
139	ZenCash	https://coinmarketcap.com/currencies/zencash/	18.2782
140	Ubiq	https://coinmarketcap.com/currencies/ubiq/	1.5317
141	Ignis	https://coinmarketcap.com/currencies/ignis/	0.0797872
142	SIRIN LABS Token	https://coinmarketcap.com/currencies/sirin-labs-token/	0.259658
143	Pura	https://coinmarketcap.com/currencies/pura/	0.332966
144	NavCoin	https://coinmarketcap.com/currencies/nav-coin/	0.91804
145	SmartCash	https://coinmarketcap.com/currencies/smartcash/	0.0675094
146	Arcblock	https://coinmarketcap.com/currencies/arcblock/	0.605159
147	Fusion	https://coinmarketcap.com/currencies/fusion/	2.02004
148	DEW	https://coinmarketcap.com/currencies/dew/	0.537757
149	XTRABYTES	https://coinmarketcap.com/currencies/xtrabytes/	0.128533
150	PayPie	https://coinmarketcap.com/currencies/paypie/	0.654503
151	BridgeCoin	https://coinmarketcap.com/currencies/bridgecoin/	1.99721
152	Gifto	https://coinmarketcap.com/currencies/gifto/	0.199288
153	Bluzelle	https://coinmarketcap.com/currencies/bluzelle/	0.320419
154	THEKEY	https://coinmarketcap.com/currencies/thekey/	0.0144343
155	ETHLend	https://coinmarketcap.com/currencies/ethlend/	0.0480272
156	Bibox Token	https://coinmarketcap.com/currencies/bibox-token/	0.486042
157	Edgeless	https://coinmarketcap.com/currencies/edgeless/	0.616482
158	High Performa...	https://coinmarketcap.com/currencies/high-performance-blockchain/	2.2655
159	DigitalNote	https://coinmarketcap.com/currencies/digitalnote/	0.00728091
160	Telcoin	https://coinmarketcap.com/currencies/telcoin/	0.00172009
161	Asch	https://coinmarketcap.com/currencies/asch/	0.519815
162	BLOCKv	https://coinmarketcap.com/currencies/blockv/	0.0316048
163	MediBloc	https://coinmarketcap.com/currencies/medibloc/	0.016308
164	AdEx	https://coinmarketcap.com/currencies/adx-net/	0.657136
165	Envion	https://coinmarketcap.com/currencies/envion/	0.447585
166	Ruff	https://coinmarketcap.com/currencies/ruff/	0.0561684
167	Eidoo	https://coinmarketcap.com/currencies/eidoo/	1.5922
168	SophiaTX	https://coinmarketcap.com/currencies/sophiatx/	0.242826
169	MediShares	https://coinmarketcap.com/currencies/medishares/	0.0955454
170	SaluS	https://coinmarketcap.com/currencies/salus/	45.702
171	BOScoin	https://coinmarketcap.com/currencies/boscoin/	0.104599
172	SmartMesh	https://coinmarketcap.com/currencies/smartmesh/	0.0315885
173	ION	https://coinmarketcap.com/currencies/ion/	2.17144
174	Scry.info	https://coinmarketcap.com/currencies/scryinfo/	0.148113
175	WePower	https://coinmarketcap.com/currencies/wepower/	0.109081
176	Loom Network	https://coinmarketcap.com/currencies/loom-network/	0.113124
177	Quantum Resis...	https://coinmarketcap.com/currencies/quantum-resistant-ledger/	0.832718
178	Ripio Credit ...	https://coinmarketcap.com/currencies/ripio-credit-network/	0.088413
179	CRYPTO20	https://coinmarketcap.com/currencies/c20/	1.0887
180	CasinoCoin	https://coinmarketcap.com/currencies/casinocoin/	0.00119038
181	Red Pulse	https://coinmarketcap.com/currencies/red-pulse/	0.0783943
182	Feathercoin	https://coinmarketcap.com/currencies/feathercoin/	0.216225
183	DATA	https://coinmarketcap.com/currencies/data/	0.00989629
184	OST	https://coinmarketcap.com/currencies/ost/	0.144599
185	Peercoin	https://coinmarketcap.com/currencies/peercoin/	1.67832
186	UTRUST	https://coinmarketcap.com/currencies/utrust/	0.143577
187	Experience Po...	https://coinmarketcap.com/currencies/experience-points/	0.000184305
188	QLINK	https://coinmarketcap.com/currencies/qlink/	0.165313
189	Ambrosus	https://coinmarketcap.com/currencies/amber/	0.273647
190	DeepBrain Chain	https://coinmarketcap.com/currencies/deepbrain-chain/	0.0437463
191	Modum	https://coinmarketcap.com/currencies/modum/	2.15331
192	SONM	https://coinmarketcap.com/currencies/sonm/	0.10935
193	Streamr DATAcoin	https://coinmarketcap.com/currencies/streamr-datacoin/	0.0575451
194	IoT Chain	https://coinmarketcap.com/currencies/iot-chain/	0.79842
195	BitBay	https://coinmarketcap.com/currencies/bitbay/	0.0383573
196	HTMLCOIN	https://coinmarketcap.com/currencies/html-coin/	0.000586383
197	AirSwap	https://coinmarketcap.com/currencies/airswap/	0.25014
198	Jibrel Network	https://coinmarketcap.com/currencies/jibrel-network/	0.249698
199	AppCoins	https://coinmarketcap.com/currencies/appcoins/	0.373102
200	Einsteinium	https://coinmarketcap.com/currencies/einsteinium/	0.171843
201	VIBE	https://coinmarketcap.com/currencies/vibe/	0.182474
202	Wings	https://coinmarketcap.com/currencies/wings/	0.401786
203	SpankChain	https://coinmarketcap.com/currencies/spankchain/	0.119708
204	TaaS	https://coinmarketcap.com/currencies/taas/	4.34445
205	SingularDTV	https://coinmarketcap.com/currencies/singulardtv/	0.0583426
206	Rock	https://coinmarketcap.com/currencies/rock/	0.130691
207	Gulden	https://coinmarketcap.com/currencies/gulden/	0.0880774
208	Ravencoin	https://coinmarketcap.com/currencies/ravencoin/	0.0474721
209	NAGA	https://coinmarketcap.com/currencies/naga/	0.598429
210	Melon	https://coinmarketcap.com/currencies/melon/	56.7701
211	Trinity Netwo...	https://coinmarketcap.com/currencies/trinity-network-credit/	0.101955
212	Tierion	https://coinmarketcap.com/currencies/tierion/	0.0774198
213	district0x	https://coinmarketcap.com/currencies/district0x/	0.054644
214	Bread	https://coinmarketcap.com/currencies/bread/	0.439257
215	Ink	https://coinmarketcap.com/currencies/ink/	0.0695392
216	INS Ecosystem	https://coinmarketcap.com/currencies/ins-ecosystem/	1.1504
217	WaBi	https://coinmarketcap.com/currencies/wabi/	0.681678
218	Delphy	https://coinmarketcap.com/currencies/delphy/	0.817702
219	DMarket	https://coinmarketcap.com/currencies/dmarket/	0.77109
220	Viacoin	https://coinmarketcap.com/currencies/viacoin/	1.31171
221	Etherparty	https://coinmarketcap.com/currencies/etherparty/	0.0617735
222	Bottos	https://coinmarketcap.com/currencies/bottos/	0.084047
223	Ormeus Coin	https://coinmarketcap.com/currencies/ormeus-coin/	1.74961
224	Crypterium	https://coinmarketcap.com/currencies/crypterium/	0.38163
225	MobileGo	https://coinmarketcap.com/currencies/mobilego/	0.301727
226	OriginTrail	https://coinmarketcap.com/currencies/origintrail/	0.115653
227	Counterparty	https://coinmarketcap.com/currencies/counterparty/	11.2271
228	Synereo	https://coinmarketcap.com/currencies/synereo/	0.29042
229	Soarcoin	https://coinmarketcap.com/currencies/soarcoin/	0.0269121
230	Unobtanium	https://coinmarketcap.com/currencies/unobtanium/	146.016
231	Universa	https://coinmarketcap.com/currencies/universa/	0.0168008
232	BlockMason Cr...	https://coinmarketcap.com/currencies/blockmason/	0.403569
233	Wagerr	https://coinmarketcap.com/currencies/wagerr/	0.154337
234	LBRY Credits	https://coinmarketcap.com/currencies/library-credit/	0.179152
235	Legolas Exchange	https://coinmarketcap.com/currencies/legolas-exchange/	0.193043
236	Burst	https://coinmarketcap.com/currencies/burst/	0.0155009
237	SpaceChain	https://coinmarketcap.com/currencies/spacechain/	0.0537908
238	Triggers	https://coinmarketcap.com/currencies/triggers/	0.853591
239	indaHash	https://coinmarketcap.com/currencies/indahash/	0.068486
240	Game.com	https://coinmarketcap.com/currencies/game/	0.0486054
241	Presearch	https://coinmarketcap.com/currencies/presearch/	0.175294
242	Aeon	https://coinmarketcap.com/currencies/aeon/	1.71946
243	Metaverse ETP	https://coinmarketcap.com/currencies/metaverse/	0.705467
244	IHT Real Esta...	https://coinmarketcap.com/currencies/iht-real-estate-protocol/	0.082524
245	CloakCoin	https://coinmarketcap.com/currencies/cloakcoin/	5.19239
246	bitCNY	https://coinmarketcap.com/currencies/bitcny/	0.1625
247	Centra	https://coinmarketcap.com/currencies/centra/	0.364904
248	Blox	https://coinmarketcap.com/currencies/blox/	0.0377147
249	Nimiq Exchang...	https://coinmarketcap.com/currencies/nimiq/	2.34744
250	Monetha	https://coinmarketcap.com/currencies/monetha/	0.108479
251	Unikoin Gold	https://coinmarketcap.com/currencies/unikoin-gold/	0.161728
252	ERA	https://coinmarketcap.com/currencies/blakestar/	0.0684415
253	LEOcoin	https://coinmarketcap.com/currencies/leocoin/	0.226212
254	Mobius	https://coinmarketcap.com/currencies/mobius/	0.060139
255	KickCoin	https://coinmarketcap.com/currencies/kickico/	0.0505806
256	Groestlcoin	https://coinmarketcap.com/currencies/groestlcoin/	0.32203
257	Namecoin	https://coinmarketcap.com/currencies/namecoin/	1.50254
258	Matryx	https://coinmarketcap.com/currencies/matryx/	0.952657
259	Havven	https://coinmarketcap.com/currencies/havven/	0.366053
260	LinkEye	https://coinmarketcap.com/currencies/linkeye/	0.0365282
261	TomoChain	https://coinmarketcap.com/currencies/tomochain/	0.397795
262	CPChain	https://coinmarketcap.com/currencies/cpchain/	0.0956369
263	Crown	https://coinmarketcap.com/currencies/crown/	1.18885
264	Odyssey	https://coinmarketcap.com/currencies/odyssey/	0.0104807
265	Humaniq	https://coinmarketcap.com/currencies/humaniq/	0.127898
266	Viberate	https://coinmarketcap.com/currencies/viberate/	0.124495
267	Lykke	https://coinmarketcap.com/currencies/lykke/	0.0643766
268	UpToken	https://coinmarketcap.com/currencies/uptoken/	0.148831
269	PotCoin	https://coinmarketcap.com/currencies/potcoin/	0.0918869
270	Shift	https://coinmarketcap.com/currencies/shift/	1.69623
271	Flash	https://coinmarketcap.com/currencies/flash/	0.0220888
272	DeepOnion	https://coinmarketcap.com/currencies/deeponion/	1.65262
273	Elastic	https://coinmarketcap.com/currencies/elastic/	0.216503
274	TokenCard	https://coinmarketcap.com/currencies/tokencard/	0.786173
275	Pepe Cash	https://coinmarketcap.com/currencies/pepe-cash/	0.0277162
276	SunContract	https://coinmarketcap.com/currencies/suncontract/	0.168394
277	Dai	https://coinmarketcap.com/currencies/dai/	1.02218
278	DECENT	https://coinmarketcap.com/currencies/decent/	0.375677
279	YOYOW	https://coinmarketcap.com/currencies/yoyow/	0.0770587
280	Medicalchain	https://coinmarketcap.com/currencies/medical-chain/	0.10398
281	U.CASH	https://coinmarketcap.com/currencies/ucash/	0.0104238
282	Lunyr	https://coinmarketcap.com/currencies/lunyr/	8.35706
283	Fortuna	https://coinmarketcap.com/currencies/fortuna/	0.0479965
284	Decision Token	https://coinmarketcap.com/currencies/decision-token/	0.59551
285	STK	https://coinmarketcap.com/currencies/stk/	0.0557054
286	Bean Cash	https://coinmarketcap.com/currencies/bean-cash/	0.00781558
287	Steem Dollars	https://coinmarketcap.com/currencies/steem-dollars/	1.69504
288	Datum	https://coinmarketcap.com/currencies/datum/	0.0226261
289	Hive Project	https://coinmarketcap.com/currencies/hive-project/	0.0501396
290	Electrify.Asia	https://coinmarketcap.com/currencies/electrifyasia/	0.0685837
291	ECC	https://coinmarketcap.com/currencies/eccoin/	0.000740798
292	Bankex	https://coinmarketcap.com/currencies/bankex/	0.268058
293	Blockport	https://coinmarketcap.com/currencies/blockport/	0.355908
294	Safe Exchange...	https://coinmarketcap.com/currencies/safe-exchange-coin/	0.0119648
295	Cofound.it	https://coinmarketcap.com/currencies/cofound-it/	0.0561181
296	Internet Node...	https://coinmarketcap.com/currencies/internet-node-token/	0.121293
297	Zeepin	https://coinmarketcap.com/currencies/zeepin/	0.0615884
298	Everex	https://coinmarketcap.com/currencies/everex/	1.09569
299	WhiteCoin	https://coinmarketcap.com/currencies/whitecoin/	0.0724031
300	Spectre.ai Di...	https://coinmarketcap.com/currencies/spectre-dividend/	0.219335
301	E-Dinar Coin	https://coinmarketcap.com/currencies/e-dinar-coin/	0.0195583
302	I/O Coin	https://coinmarketcap.com/currencies/iocoin/	1.04159
303	adToken	https://coinmarketcap.com/currencies/adtoken/	0.0286262
304	Linda	https://coinmarketcap.com/currencies/linda/	0.00193996
305	QunQun	https://coinmarketcap.com/currencies/qunqun/	0.0247558
306	Refereum	https://coinmarketcap.com/currencies/refereum/	0.00722828
307	Mooncoin	https://coinmarketcap.com/currencies/mooncoin/	7.52996e-05
308	NoLimitCoin	https://coinmarketcap.com/currencies/nolimitcoin/	0.0817291
309	BlackCoin	https://coinmarketcap.com/currencies/blackcoin/	0.217206
310	ATMChain	https://coinmarketcap.com/currencies/attention-token-of-media/	0.00355862
311	Uquid Coin	https://coinmarketcap.com/currencies/uquid-coin/	1.65673
312	Republic Prot...	https://coinmarketcap.com/currencies/republic-protocol/	0.0360189
313	SwftCoin	https://coinmarketcap.com/currencies/swftcoin/	0.00937708
314	Mercury	https://coinmarketcap.com/currencies/mercury/	0.163632
315	Diamond	https://coinmarketcap.com/currencies/diamond/	5.96944
316	Numeraire	https://coinmarketcap.com/currencies/numeraire/	11.9126
317	All Sports	https://coinmarketcap.com/currencies/all-sports/	0.0331731
318	Mothership	https://coinmarketcap.com/currencies/mothership/	0.113761
319	SwissBorg	https://coinmarketcap.com/currencies/swissborg/	0.027637
320	Peerplays	https://coinmarketcap.com/currencies/peerplays-ppy/	4.01594
321	GridCoin	https://coinmarketcap.com/currencies/gridcoin/	0.0402634
322	Storiqa	https://coinmarketcap.com/currencies/storiqa/	0.00202146
323	FirstBlood	https://coinmarketcap.com/currencies/firstblood/	0.182755
324	Propy	https://coinmarketcap.com/currencies/propy/	0.894291
325	Dimecoin	https://coinmarketcap.com/currencies/dimecoin/	2.84583e-05
326	RevolutionVR	https://coinmarketcap.com/currencies/revolutionvr/	0.0726957
327	SIBCoin	https://coinmarketcap.com/currencies/sibcoin/	0.915919
328	Moeda Loyalty...	https://coinmarketcap.com/currencies/moeda-loyalty-points/	0.772731
329	Leadcoin	https://coinmarketcap.com/currencies/leadcoin/	0.0192106
330	WeTrust	https://coinmarketcap.com/currencies/trust/	0.163221
331	Alphacat	https://coinmarketcap.com/currencies/alphacat/	0.0053486
332	YEE	https://coinmarketcap.com/currencies/yee/	0.01166
333	VeriCoin	https://coinmarketcap.com/currencies/vericoin/	0.474332
334	Zap	https://coinmarketcap.com/currencies/zap/	0.130694
335	PRIZM	https://coinmarketcap.com/currencies/prizm/	0.920085
336	Primecoin	https://coinmarketcap.com/currencies/primecoin/	0.624374
337	Paypex	https://coinmarketcap.com/currencies/paypex/	0.208531
338	Agrello	https://coinmarketcap.com/currencies/agrello-delta/	0.164227
339	BitClave	https://coinmarketcap.com/currencies/bitclave/	0.0280097
340	Selfkey	https://coinmarketcap.com/currencies/selfkey/	0.00732593
341	Trade Token	https://coinmarketcap.com/currencies/trade-token/	0.166137
342	MonetaryUnit	https://coinmarketcap.com/currencies/monetaryunit/	0.109275
343	Aeron	https://coinmarketcap.com/currencies/aeron/	1.07229
344	Banyan Network	https://coinmarketcap.com/currencies/banyan-network/	0.102169
345	bitUSD	https://coinmarketcap.com/currencies/bitusd/	1.08922
346	Energo	https://coinmarketcap.com/currencies/energo/	0.0228489
347	carVertical	https://coinmarketcap.com/currencies/carvertical/	0.00243356
348	FairCoin	https://coinmarketcap.com/currencies/faircoin/	0.247766
349	Bloom	https://coinmarketcap.com/currencies/bloomtoken/	0.333065
350	Zeusshield	https://coinmarketcap.com/currencies/zeusshield/	0.0112994
351	Matchpool	https://coinmarketcap.com/currencies/guppy/	0.173721
352	ICOS	https://coinmarketcap.com/currencies/icos/	22.469
353	Omni	https://coinmarketcap.com/currencies/omni/	23.1871
354	Pascal Coin	https://coinmarketcap.com/currencies/pascal-coin/	0.669964
355	BitDegree	https://coinmarketcap.com/currencies/bitdegree/	0.0359424
356	Paragon	https://coinmarketcap.com/currencies/paragon/	0.194072
357	True Chain	https://coinmarketcap.com/currencies/true-chain/	0.503355
358	COSS	https://coinmarketcap.com/currencies/coss/	0.192498
359	LATOKEN	https://coinmarketcap.com/currencies/latoken/	0.16044
360	ZClassic	https://coinmarketcap.com/currencies/zclassic/	3.44435
361	ShipChain	https://coinmarketcap.com/currencies/shipchain/	0.0861971
362	EncrypGen	https://coinmarketcap.com/currencies/encrypgen/	0.199448
363	OAX	https://coinmarketcap.com/currencies/oax/	0.490046
364	DADI	https://coinmarketcap.com/currencies/dadi/	0.158584
365	SolarCoin	https://coinmarketcap.com/currencies/solarcoin/	0.2845
366	Expanse	https://coinmarketcap.com/currencies/expanse/	1.50174
367	Datawallet	https://coinmarketcap.com/currencies/datawallet/	0.0304131
368	Blackmoon	https://coinmarketcap.com/currencies/blackmoon/	0.557351
369	CanYaCoin	https://coinmarketcap.com/currencies/canyacoin/	0.291551
370	Qbao	https://coinmarketcap.com/currencies/qbao/	0.179241
371	SureRemit	https://coinmarketcap.com/currencies/sureremit/	0.0233707
372	Covesting	https://coinmarketcap.com/currencies/covesting/	0.667184
373	Hi Mutual Soc...	https://coinmarketcap.com/currencies/hi-mutual-society/	0.0288765
374	Cappasity	https://coinmarketcap.com/currencies/cappasity/	0.0303553
375	Databits	https://coinmarketcap.com/currencies/databits/	0.509262
376	Incent	https://coinmarketcap.com/currencies/incent/	0.251582
377	SHIELD	https://coinmarketcap.com/currencies/shield-xsh/	0.0237534
378	Phore	https://coinmarketcap.com/currencies/phore/	1.56774
379	Bodhi	https://coinmarketcap.com/currencies/bodhi/	0.28346
380	Grid+	https://coinmarketcap.com/currencies/grid/	0.286259
381	HempCoin	https://coinmarketcap.com/currencies/hempcoin/	0.0485082
382	Radium	https://coinmarketcap.com/currencies/radium/	3.21389
383	Exchange Union	https://coinmarketcap.com/currencies/exchange-union/	5.56487
384	Blocktix	https://coinmarketcap.com/currencies/blocktix/	0.278132
385	iXledger	https://coinmarketcap.com/currencies/ixledger/	0.309332
386	Universal Cur...	https://coinmarketcap.com/currencies/universal-currency/	0.818217
387	Zoin	https://coinmarketcap.com/currencies/zoin/	0.626359
388	Lympo	https://coinmarketcap.com/currencies/lympo/	0.0200821
389	Lamden	https://coinmarketcap.com/currencies/lamden/	0.0754943
390	ALIS	https://coinmarketcap.com/currencies/alis/	0.278081
391	OracleChain	https://coinmarketcap.com/currencies/oraclechain/	0.356061
392	InsurePal	https://coinmarketcap.com/currencies/insurepal/	0.0529248
393	Xaurum	https://coinmarketcap.com/currencies/xaurum/	0.082329
394	ColossusXT	https://coinmarketcap.com/currencies/colossusxt/	0.000968669
395	Snovio	https://coinmarketcap.com/currencies/snovio/	0.0256252
396	DomRaider	https://coinmarketcap.com/currencies/domraider/	0.0175197
397	AICHAIN	https://coinmarketcap.com/currencies/aichain/	0.0193438
398	NewYorkCoin	https://coinmarketcap.com/currencies/newyorkcoin/	7.71224e-05
399	BitSend	https://coinmarketcap.com/currencies/bitsend/	0.545726
400	Neumark	https://coinmarketcap.com/currencies/neumark/	0.353125
401	Energycoin	https://coinmarketcap.com/currencies/energycoin/	0.0826574
402	LoMoCoin	https://coinmarketcap.com/currencies/lomocoin/	0.0441175
403	Restart Energ...	https://coinmarketcap.com/currencies/restart-energy-mwat/	0.0241699
404	FirstCoin	https://coinmarketcap.com/currencies/firstcoin/	0.317569
405	FlorinCoin	https://coinmarketcap.com/currencies/florincoin/	0.0689675
406	Everus	https://coinmarketcap.com/currencies/everus/	0.165444
407	ProChain	https://coinmarketcap.com/currencies/prochain/	0.197619
408	Bismuth	https://coinmarketcap.com/currencies/bismuth/	1.13585
409	Clams	https://coinmarketcap.com/currencies/clams/	3.32874
410	CoinMeet	https://coinmarketcap.com/currencies/coinmeet/	0.0501446
411	NVO	https://coinmarketcap.com/currencies/nvo/	0.651096
412	Boolberry	https://coinmarketcap.com/currencies/boolberry/	0.862583
413	Divi	https://coinmarketcap.com/currencies/divi/	1.89271
414	Cashaa	https://coinmarketcap.com/currencies/cashaa/	0.0294682
415	Bitcoin Atom	https://coinmarketcap.com/currencies/bitcoin-atom/	0.541921
416	TE-FOOD	https://coinmarketcap.com/currencies/te-food/	0.0240124
417	DecentBet	https://coinmarketcap.com/currencies/decent-bet/	0.0802052
418	Olympus Labs	https://coinmarketcap.com/currencies/olympus-labs/	0.244666
419	Rubycoin	https://coinmarketcap.com/currencies/rubycoin/	0.374201
420	Swarm	https://coinmarketcap.com/currencies/swarm-fund/	0.185996
421	Debitum Network	https://coinmarketcap.com/currencies/debitum-network/	0.0572676
422	ToaCoin	https://coinmarketcap.com/currencies/toacoin/	0.00393255
423	Auroracoin	https://coinmarketcap.com/currencies/auroracoin/	1.08863
424	ATN	https://coinmarketcap.com/currencies/atn/	0.433996
425	EchoLink	https://coinmarketcap.com/currencies/echolink/	0.0372819
426	Electra	https://coinmarketcap.com/currencies/electra/	0.000387837
427	Waves Communi...	https://coinmarketcap.com/currencies/waves-community-token/	0.927453
428	Rise	https://coinmarketcap.com/currencies/rise/	0.0752779
429	ALQO	https://coinmarketcap.com/currencies/alqo/	0.272981
430	Mintcoin	https://coinmarketcap.com/currencies/mintcoin/	0.00036728
431	TransferCoin	https://coinmarketcap.com/currencies/transfercoin/	1.42789
432	Oxycoin	https://coinmarketcap.com/currencies/oxycoin/	0.0942098
433	Eroscoin	https://coinmarketcap.com/currencies/eroscoin/	0.0487248
434	Swarm City	https://coinmarketcap.com/currencies/swarm-city/	1.11235
435	Profile Utili...	https://coinmarketcap.com/currencies/profile-utility-token/	0.254734
436	ATBCoin	https://coinmarketcap.com/currencies/atbcoin/	0.21627
437	Rialto	https://coinmarketcap.com/currencies/rialto/	0.119615
438	EarthCoin	https://coinmarketcap.com/currencies/earthcoin/	0.000743991
439	BitConnect	https://coinmarketcap.com/currencies/bitconnect/	0.938814
440	MyBit Token	https://coinmarketcap.com/currencies/mybit-token/	3.13768
441	CoinFi	https://coinmarketcap.com/currencies/coinfi/	0.0512226
442	Musicoin	https://coinmarketcap.com/currencies/musicoin/	0.01249
443	Measurable Da...	https://coinmarketcap.com/currencies/measurable-data-token/	0.0552176
444	Spectrecoin	https://coinmarketcap.com/currencies/spectrecoin/	0.418498
445	Primas	https://coinmarketcap.com/currencies/primas/	0.169855
446	Aurora DAO	https://coinmarketcap.com/currencies/aurora-dao/	0.084876
447	Tao	https://coinmarketcap.com/currencies/tao/	0.261885
448	DubaiCoin	https://coinmarketcap.com/currencies/dubaicoin-dbix/	3.84283
449	Stox	https://coinmarketcap.com/currencies/stox/	0.20316
450	GoByte	https://coinmarketcap.com/currencies/gobyte/	7.5858
451	DIMCOIN	https://coinmarketcap.com/currencies/dimcoin/	0.00402652
452	LockChain	https://coinmarketcap.com/currencies/lockchain/	0.906035
453	Quantum	https://coinmarketcap.com/currencies/quantum/	0.110462
454	BitDice	https://coinmarketcap.com/currencies/bitdice/	0.119038
455	HelloGold	https://coinmarketcap.com/currencies/hellogold/	0.0316251
456	The ChampCoin	https://coinmarketcap.com/currencies/the-champcoin/	0.0503682
457	Karma	https://coinmarketcap.com/currencies/karma/	0.00819585
458	OneRoot Network	https://coinmarketcap.com/currencies/oneroot-network/	0.0368288
459	OKCash	https://coinmarketcap.com/currencies/okcash/	0.110112
460	Myriad	https://coinmarketcap.com/currencies/myriad/	0.00520749
461	AirToken	https://coinmarketcap.com/currencies/airtoken/	0.0077258
462	NeosCoin	https://coinmarketcap.com/currencies/neoscoin/	2.16311
463	Worldcore	https://coinmarketcap.com/currencies/worldcore/	0.045727
464	Hackspace Cap...	https://coinmarketcap.com/currencies/hackspace-capital/	0.0245626
465	True USD	https://coinmarketcap.com/currencies/true-usd/	1.00024
466	Rivetz	https://coinmarketcap.com/currencies/rivetz/	0.30119
467	FidentiaX	https://coinmarketcap.com/currencies/fidentiax/	0.0751402
468	Hubii Network	https://coinmarketcap.com/currencies/hubii-network/	0.579584
469	Nexium	https://coinmarketcap.com/currencies/nexium/	0.117679
470	Hacken	https://coinmarketcap.com/currencies/hacken/	1.91496
471	Gambit	https://coinmarketcap.com/currencies/gambit/	6.49295
472	TokenClub	https://coinmarketcap.com/currencies/tokenclub/	0.0162764
473	PoSW Coin	https://coinmarketcap.com/currencies/posw-coin/	0.175847
474	Patientory	https://coinmarketcap.com/currencies/patientory/	0.109907
475	SportyCo	https://coinmarketcap.com/currencies/sportyco/	0.147067
476	Chronobank	https://coinmarketcap.com/currencies/chronobank/	10.8075
477	Open Trading ...	https://coinmarketcap.com/currencies/open-trading-network/	2.13599
478	CoinPoker	https://coinmarketcap.com/currencies/coinpoker/	0.0461087
479	Ties.DB	https://coinmarketcap.com/currencies/tiesdb/	0.182724
480	aXpire	https://coinmarketcap.com/currencies/axpire/	0.029069
481	Solaris	https://coinmarketcap.com/currencies/solaris/	6.59653
482	Polybius	https://coinmarketcap.com/currencies/polybius/	1.85963
483	Dynamic	https://coinmarketcap.com/currencies/dynamic/	1.50774
484	Starbase	https://coinmarketcap.com/currencies/starbase/	0.0387713
485	Pandacoin	https://coinmarketcap.com/currencies/pandacoin-pnd/	0.000223001
486	EZToken	https://coinmarketcap.com/currencies/eztoken/	0.62757
487	LALA World	https://coinmarketcap.com/currencies/lala-world/	0.0388068
488	InvestFeed	https://coinmarketcap.com/currencies/investfeed/	0.0373769
489	Insights Network	https://coinmarketcap.com/currencies/insights-network/	0.0567843
490	Golos	https://coinmarketcap.com/currencies/golos/	0.0566493
491	Novacoin	https://coinmarketcap.com/currencies/novacoin/	3.4781
492	B2BX	https://coinmarketcap.com/currencies/b2bx/	0.430133
493	FoldingCoin	https://coinmarketcap.com/currencies/foldingcoin/	0.0118647
494	Mysterium	https://coinmarketcap.com/currencies/mysterium/	0.349879
495	Syndicate	https://coinmarketcap.com/currencies/syndicate/	0.342092
496	Guaranteed Et...	https://coinmarketcap.com/currencies/guaranteed-ethurance-token-extra/	0.0218221
497	Sphere	https://coinmarketcap.com/currencies/sphere/	2.10626
498	DopeCoin	https://coinmarketcap.com/currencies/dopecoin/	0.0554769
499	Block Array	https://coinmarketcap.com/currencies/block-array/	0.0942994
500	Sequence	https://coinmarketcap.com/currencies/sequence/	0.141581
501	Zilla	https://coinmarketcap.com/currencies/zilla/	0.165711
502	Interplanetar...	https://coinmarketcap.com/currencies/interplanetary-broadcast-coin/	0.191822
503	Espers	https://coinmarketcap.com/currencies/espers/	0.000297397
504	PinkCoin	https://coinmarketcap.com/currencies/pinkcoin/	0.0166188
505	CHIPS	https://coinmarketcap.com/currencies/chips/	0.301068
506	APX	https://coinmarketcap.com/currencies/apx/	8.92759
507	Pirl	https://coinmarketcap.com/currencies/pirl/	0.510954
508	Ink Protocol	https://coinmarketcap.com/currencies/ink-protocol/	0.0377421
509	Etheroll	https://coinmarketcap.com/currencies/etheroll/	0.863728
510	CVCoin	https://coinmarketcap.com/currencies/cvcoin/	0.609343
511	Hydro Protocol	https://coinmarketcap.com/currencies/hydro-protocol/	0.0254693
512	LUXCoin	https://coinmarketcap.com/currencies/luxcoin/	4.32168
513	Bitcrystals	https://coinmarketcap.com/currencies/bitcrystals/	0.25081
514	ClearPoll	https://coinmarketcap.com/currencies/clearpoll/	0.827632
515	Curecoin	https://coinmarketcap.com/currencies/curecoin/	0.241586
516	Elixir	https://coinmarketcap.com/currencies/elixir/	0.18112
517	Bounty0x	https://coinmarketcap.com/currencies/bounty0x/	0.0441911
518	Aventus	https://coinmarketcap.com/currencies/aventus/	0.944194
519	Tokes	https://coinmarketcap.com/currencies/tokes/	1.68572
520	Farad	https://coinmarketcap.com/currencies/farad/	0.0413381
521	Viuly	https://coinmarketcap.com/currencies/viuly/	0.00824121
522	Stealthcoin	https://coinmarketcap.com/currencies/stealthcoin/	0.194057
523	Circuits of V...	https://coinmarketcap.com/currencies/circuits-of-value/	0.00550553
524	BLUE	https://coinmarketcap.com/currencies/ethereum-blue/	0.149375
525	HEAT	https://coinmarketcap.com/currencies/heat-ledger/	0.164302
526	FedoraCoin	https://coinmarketcap.com/currencies/fedoracoin/	2.57373e-05
527	Internet of P...	https://coinmarketcap.com/currencies/internet-of-people/	1.53384
528	OBITS	https://coinmarketcap.com/currencies/obits/	0.344604
529	Remme	https://coinmarketcap.com/currencies/remme/	0.00895457
530	Dotcoin	https://coinmarketcap.com/currencies/dotcoin/	0.0183834
531	Change	https://coinmarketcap.com/currencies/change/	0.142919
532	GET Protocol	https://coinmarketcap.com/currencies/get-protocol/	0.50841
533	Ethorse	https://coinmarketcap.com/currencies/ethorse/	0.0525374
534	AidCoin	https://coinmarketcap.com/currencies/aidcoin/	0.1582
535	Bulwark	https://coinmarketcap.com/currencies/bulwark/	0.982896
536	GeoCoin	https://coinmarketcap.com/currencies/geocoin/	1.66184
537	TrueFlip	https://coinmarketcap.com/currencies/trueflip/	0.80882
538	Atmos	https://coinmarketcap.com/currencies/atmos/	0.0502194
539	Spectre.ai Ut...	https://coinmarketcap.com/currencies/spectre-utility/	0.202509
540	ArtByte	https://coinmarketcap.com/currencies/artbyte/	0.00622764
541	BABB	https://coinmarketcap.com/currencies/babb/	0.000385497
542	REBL	https://coinmarketcap.com/currencies/rebl/	0.0290636
543	CargoX	https://coinmarketcap.com/currencies/cargox/	0.0379964
544	Sether	https://coinmarketcap.com/currencies/sether/	0.284199
545	Polis	https://coinmarketcap.com/currencies/polis/	3.18854
546	eBitcoin	https://coinmarketcap.com/currencies/ebtcnew/	0.250748
547	Playkey	https://coinmarketcap.com/currencies/playkey/	0.341638
548	Primalbase Token	https://coinmarketcap.com/currencies/primalbase/	3701.33
549	Ethereum Movi...	https://coinmarketcap.com/currencies/ethereum-movie-venture/	0.694025
550	Blockpool	https://coinmarketcap.com/currencies/blockpool/	0.203686
551	LIFE	https://coinmarketcap.com/currencies/life/	0.000301814
552	Bitmark	https://coinmarketcap.com/currencies/bitmark/	0.522202
553	RussiaCoin	https://coinmarketcap.com/currencies/russiacoin/	0.533367
554	Denarius	https://coinmarketcap.com/currencies/denarius-dnr/	1.73924
555	Voise	https://coinmarketcap.com/currencies/voisecom/	0.0088647
556	Kore	https://coinmarketcap.com/currencies/korecoin/	2.18227
557	Flixxo	https://coinmarketcap.com/currencies/flixxo/	0.0571105
558	BlockCAT	https://coinmarketcap.com/currencies/blockcat/	0.598327
559	BioCoin	https://coinmarketcap.com/currencies/biocoin/	0.0070843
560	Uniform Fisca...	https://coinmarketcap.com/currencies/uniform-fiscal-object/	0.00122495
561	Neutron	https://coinmarketcap.com/currencies/neutron/	0.125488
562	NuBits	https://coinmarketcap.com/currencies/nubits/	0.416646
563	Gatcoin	https://coinmarketcap.com/currencies/gatcoin/	0.0081576
564	DAO.Casino	https://coinmarketcap.com/currencies/dao-casino/	0.0257597
565	adbank	https://coinmarketcap.com/currencies/adbank/	0.0110202
566	Memetic / Pep...	https://coinmarketcap.com/currencies/memetic/	0.193915
567	Bitcloud	https://coinmarketcap.com/currencies/bitcloud/	0.203904
568	Opus	https://coinmarketcap.com/currencies/opus/	0.0299762
569	GoldMint	https://coinmarketcap.com/currencies/goldmint/	2.18383
570	Breakout Stake	https://coinmarketcap.com/currencies/breakout-stake/	0.661219
571	Synergy	https://coinmarketcap.com/currencies/synergy/	1.17303
572	RefToken	https://coinmarketcap.com/currencies/reftoken/	5.59885
573	Global Curren...	https://coinmarketcap.com/currencies/global-currency-reserve/	0.0394315
574	Publica	https://coinmarketcap.com/currencies/publica/	0.220515
575	BitcoinZ	https://coinmarketcap.com/currencies/bitcoinz/	0.00282287
576	Qwark	https://coinmarketcap.com/currencies/qwark/	0.0763948
577	Pareto Network	https://coinmarketcap.com/currencies/pareto-network/	0.0188503
578	Terracoin	https://coinmarketcap.com/currencies/terracoin/	0.179281
579	Elite	https://coinmarketcap.com/currencies/1337coin/	0.000153654
580	REAL	https://coinmarketcap.com/currencies/real/	0.398879
581	Sumokoin	https://coinmarketcap.com/currencies/sumokoin/	1.41452
582	Education Eco...	https://coinmarketcap.com/currencies/education-ecosystem/	0.0182364
583	PiplCoin	https://coinmarketcap.com/currencies/piplcoin/	0.0473628
584	Payfair	https://coinmarketcap.com/currencies/payfair/	0.0442904
585	ExclusiveCoin	https://coinmarketcap.com/currencies/exclusivecoin/	0.869434
586	Pesetacoin	https://coinmarketcap.com/currencies/pesetacoin/	0.0292534
587	Vezt	https://coinmarketcap.com/currencies/vezt/	0.089095
588	Bitcoin Plus	https://coinmarketcap.com/currencies/bitcoin-plus/	35.7423
589	HyperStake	https://coinmarketcap.com/currencies/hyperstake/	0.00321776
590	Tracto	https://coinmarketcap.com/currencies/tracto/	0.172787
591	Graft	https://coinmarketcap.com/currencies/graft/	0.0223941
592	Bezop	https://coinmarketcap.com/currencies/bezop/	0.0933762
593	Astro	https://coinmarketcap.com/currencies/astro/	1.12443
594	HollyWoodCoin	https://coinmarketcap.com/currencies/hollywoodcoin/	3.90415
595	ZrCoin	https://coinmarketcap.com/currencies/zrcoin/	0.975197
596	Hush	https://coinmarketcap.com/currencies/hush/	1.0393
597	Smartlands	https://coinmarketcap.com/currencies/smartlands/	0.68948
598	Leverj	https://coinmarketcap.com/currencies/leverj/	0.0295806
599	Zeitcoin	https://coinmarketcap.com/currencies/zeitcoin/	9.42824e-05
600	Dether	https://coinmarketcap.com/currencies/dether/	0.0479254
601	Experty	https://coinmarketcap.com/currencies/experty/	0.126653
602	Internxt	https://coinmarketcap.com/currencies/internxt/	5.43586
603	AdShares	https://coinmarketcap.com/currencies/adshares/	0.17609
604	Nework	https://coinmarketcap.com/currencies/nework/	0.0328104
605	Tokenbox	https://coinmarketcap.com/currencies/tokenbox/	0.304208
606	1World	https://coinmarketcap.com/currencies/1world/	0.268743
607	VeriumReserve	https://coinmarketcap.com/currencies/veriumreserve/	2.16173
608	FLiK	https://coinmarketcap.com/currencies/flik/	0.0548638
609	LuckChain	https://coinmarketcap.com/currencies/luckchain/	0.004605
610	LOCIcoin	https://coinmarketcap.com/currencies/locicoin/	0.0892876
611	Bela	https://coinmarketcap.com/currencies/belacoin/	0.0789993
612	Riecoin	https://coinmarketcap.com/currencies/riecoin/	0.075887
613	Iungo	https://coinmarketcap.com/currencies/iungo/	0.0799494
614	DNotes	https://coinmarketcap.com/currencies/dnotes/	0.0239964
615	vSlice	https://coinmarketcap.com/currencies/vslice/	0.0954049
616	Dovu	https://coinmarketcap.com/currencies/dovu/	0.0497288
617	EuropeCoin	https://coinmarketcap.com/currencies/europecoin/	0.315526
618	ATLANT	https://coinmarketcap.com/currencies/atlant/	0.239562
619	HEROcoin	https://coinmarketcap.com/currencies/herocoin/	0.0265902
620	Devery	https://coinmarketcap.com/currencies/devery/	0.0498959
621	Sprouts	https://coinmarketcap.com/currencies/sprouts/	6.55255e-07
622	Breakout	https://coinmarketcap.com/currencies/breakout/	0.166488
623	Hawala.Today	https://coinmarketcap.com/currencies/hawala-today/	2.07893
624	vTorrent	https://coinmarketcap.com/currencies/vtorrent/	0.269473
625	GoldCoin	https://coinmarketcap.com/currencies/goldcoin/	0.0755231
626	Cryptopay	https://coinmarketcap.com/currencies/cryptopay/	0.0449772
627	CryptoPing	https://coinmarketcap.com/currencies/cryptoping/	0.303967
628	Upfiring	https://coinmarketcap.com/currencies/upfiring/	0.186036
629	MCAP	https://coinmarketcap.com/currencies/mcap/	0.282333
630	Mercury Protocol	https://coinmarketcap.com/currencies/mercury-protocol/	0.0170913
631	Bonpay	https://coinmarketcap.com/currencies/bonpay/	0.257427
632	Greencoin	https://coinmarketcap.com/currencies/greencoin/	0.000732356
633	2GIVE	https://coinmarketcap.com/currencies/2give/	0.00551024
634	Sociall	https://coinmarketcap.com/currencies/sociall/	0.170869
635	Travelflex	https://coinmarketcap.com/currencies/travelflex/	0.0371423
636	Karbo	https://coinmarketcap.com/currencies/karbo/	0.506935
637	Aigang	https://coinmarketcap.com/currencies/aigang/	0.146088
638	COPYTRACK	https://coinmarketcap.com/currencies/copytrack/	0.125708
639	Monoeci	https://coinmarketcap.com/currencies/monacocoin/	0.89645
640	JET8	https://coinmarketcap.com/currencies/jet8/	0.0104503
641	CannabisCoin	https://coinmarketcap.com/currencies/cannabiscoin/	0.035957
642	Global Crypto...	https://coinmarketcap.com/currencies/global-cryptocurrency/	0.00461274
643	Sharpe Platfo...	https://coinmarketcap.com/currencies/sharpe-platform-token/	0.170097
644	EXRNchain	https://coinmarketcap.com/currencies/exrnchain/	2.98444e-05
645	CampusCoin	https://coinmarketcap.com/currencies/campuscoin/	0.00737527
646	TrezarCoin	https://coinmarketcap.com/currencies/trezarcoin/	0.0286436
647	Quark	https://coinmarketcap.com/currencies/quark/	0.0106622
648	Bitcoin Green	https://coinmarketcap.com/currencies/bitcoin-green/	4.6119
649	ShareX	https://coinmarketcap.com/currencies/sharex/	0.00572437
650	Magnet	https://coinmarketcap.com/currencies/magnet/	0.122841
651	Lampix	https://coinmarketcap.com/currencies/lampix/	0.0195133
652	LatiumX	https://coinmarketcap.com/currencies/latiumx/	0.0356617
653	Altcoin	https://coinmarketcap.com/currencies/altcoin-alt/	21.0814
654	GCN Coin	https://coinmarketcap.com/currencies/gcn-coin/	1.68206e-05
655	BitWhite	https://coinmarketcap.com/currencies/bitwhite/	0.0711502
656	Autonio	https://coinmarketcap.com/currencies/autonio/	0.0392618
657	Vsync	https://coinmarketcap.com/currencies/vsync-vsx/	0.0160688
658	Monkey Project	https://coinmarketcap.com/currencies/monkey-project/	2.98363
659	Zephyr	https://coinmarketcap.com/currencies/zephyr/	0.0204298
660	BlueCoin	https://coinmarketcap.com/currencies/bluecoin/	0.00444884
661	BunnyCoin	https://coinmarketcap.com/currencies/bunnycoin/	2.45906e-05
662	Regalcoin	https://coinmarketcap.com/currencies/regalcoin/	0.197037
663	AudioCoin	https://coinmarketcap.com/currencies/audiocoin/	0.00290161
664	Privatix	https://coinmarketcap.com/currencies/privatix/	2.10472
665	Jiyo	https://coinmarketcap.com/currencies/jiyo/	0.135133
666	Obsidian	https://coinmarketcap.com/currencies/obsidian/	0.0987914
667	Verify	https://coinmarketcap.com/currencies/verify/	0.19793
668	Crave	https://coinmarketcap.com/currencies/crave/	0.166021
669	XGOX	https://coinmarketcap.com/currencies/xgox/	0.00134338
670	Zero	https://coinmarketcap.com/currencies/zero/	0.904618
671	NobleCoin	https://coinmarketcap.com/currencies/noblecoin/	0.00104159
672	Creditbit	https://coinmarketcap.com/currencies/creditbit/	0.146114
673	Blitzcash	https://coinmarketcap.com/currencies/blitzcash/	0.584479
674	FORCE	https://coinmarketcap.com/currencies/force/	0.0200133
675	Ergo	https://coinmarketcap.com/currencies/ergo/	6.03454
676	HunterCoin	https://coinmarketcap.com/currencies/huntercoin/	0.106911
677	MyWish	https://coinmarketcap.com/currencies/mywish/	0.123129
678	Kzcash	https://coinmarketcap.com/currencies/kzcash/	2.79256
679	eBoost	https://coinmarketcap.com/currencies/eboostcoin/	0.111152
680	Innova	https://coinmarketcap.com/currencies/innova/	0.909826
681	DigiPulse	https://coinmarketcap.com/currencies/digipulse/	1.56442
682	SpreadCoin	https://coinmarketcap.com/currencies/spreadcoin/	0.222442
683	Sharechain	https://coinmarketcap.com/currencies/sharechain/	0.000969731
684	SagaCoin	https://coinmarketcap.com/currencies/sagacoin/	1.12695
685	Coinlancer	https://coinmarketcap.com/currencies/coinlancer/	0.0303315
686	Bitswift	https://coinmarketcap.com/currencies/bitswift/	0.547949
687	ChainCoin	https://coinmarketcap.com/currencies/chaincoin/	0.141433
688	Yocoin	https://coinmarketcap.com/currencies/yocoin/	0.0187571
689	PutinCoin	https://coinmarketcap.com/currencies/putincoin/	0.00518952
690	Chronologic	https://coinmarketcap.com/currencies/chronologic/	3.22814
691	EverGreenCoin	https://coinmarketcap.com/currencies/evergreencoin/	0.155477
692	Ethbits	https://coinmarketcap.com/currencies/ethbits/	1.48559
693	TeslaCoin	https://coinmarketcap.com/currencies/teslacoin/	0.0273045
694	LiteDoge	https://coinmarketcap.com/currencies/litedoge/	0.000136097
695	Sexcoin	https://coinmarketcap.com/currencies/sexcoin/	0.0161005
696	Rupaya	https://coinmarketcap.com/currencies/rupaya/	0.140016
697	e-Gulden	https://coinmarketcap.com/currencies/e-gulden/	0.121258
698	Creativecoin	https://coinmarketcap.com/currencies/creativecoin/	0.143941
699	MicroMoney	https://coinmarketcap.com/currencies/micromoney/	0.197902
700	MarteXcoin	https://coinmarketcap.com/currencies/martexcoin/	0.679921
701	Linx	https://coinmarketcap.com/currencies/linx/	0.095015
702	TrustPlus	https://coinmarketcap.com/currencies/trustplus/	0.0595192
703	Bitzeny	https://coinmarketcap.com/currencies/bitzeny/	0.0244351
704	Qvolta	https://coinmarketcap.com/currencies/qvolta/	0.258304
705	Magi	https://coinmarketcap.com/currencies/magi/	0.228588
706	Condensate	https://coinmarketcap.com/currencies/condensate/	0.0111766
707	Jesus Coin	https://coinmarketcap.com/currencies/jesus-coin/	0.000107224
708	Indorse Token	https://coinmarketcap.com/currencies/indorse-token/	0.0370622
709	BuzzCoin	https://coinmarketcap.com/currencies/buzzcoin/	9.03465e-05
710	Bullion	https://coinmarketcap.com/currencies/bullion/	1.69429
711	FlypMe	https://coinmarketcap.com/currencies/flypme/	0.0967188
712	LendConnect	https://coinmarketcap.com/currencies/lendconnect/	0.786492
713	Speed Mining ...	https://coinmarketcap.com/currencies/speed-mining-service/	15.9655
714	IntenseCoin	https://coinmarketcap.com/currencies/intensecoin/	0.00397792
715	Ellaism	https://coinmarketcap.com/currencies/ellaism/	0.253448
716	Social Send	https://coinmarketcap.com/currencies/social-send/	0.0496558
717	Rupee	https://coinmarketcap.com/currencies/rupee/	0.0694656
718	Tidex Token	https://coinmarketcap.com/currencies/tidex-token/	0.161558
719	ProCurrency	https://coinmarketcap.com/currencies/procurrency/	0.0156239
720	STRAKS	https://coinmarketcap.com/currencies/straks/	0.533798
721	Pylon Network	https://coinmarketcap.com/currencies/pylon-network/	4.31515
722	SkinCoin	https://coinmarketcap.com/currencies/skincoin/	0.0167389
723	Footy Cash	https://coinmarketcap.com/currencies/footy-cash/	0.316568
724	Oceanlab	https://coinmarketcap.com/currencies/oceanlab/	0.030514
725	Ignition	https://coinmarketcap.com/currencies/ignition/	3.2611
726	Miners' Rewar...	https://coinmarketcap.com/currencies/miners-reward-token/	0.1384
727	UnbreakableCoin	https://coinmarketcap.com/currencies/unbreakablecoin/	0.603717
728	SmileyCoin	https://coinmarketcap.com/currencies/smileycoin/	5.29544e-05
729	Adzcoin	https://coinmarketcap.com/currencies/adzcoin/	0.0307203
730	FundYourselfNow	https://coinmarketcap.com/currencies/fundyourselfnow/	1.4606
731	EquiTrader	https://coinmarketcap.com/currencies/equitrader/	0.126616
732	onG.social	https://coinmarketcap.com/currencies/ongsocial/	0.0955355
733	MAZA	https://coinmarketcap.com/currencies/mazacoin/	0.00119038
734	Growers Inter...	https://coinmarketcap.com/currencies/growers-international/	1.06234
735	ArcticCoin	https://coinmarketcap.com/currencies/arcticcoin/	0.0499872
736	Etheriya	https://coinmarketcap.com/currencies/etheriya/	0.771489
737	VIVO	https://coinmarketcap.com/currencies/vivo/	0.773642
738	DigitalPrice	https://coinmarketcap.com/currencies/digitalprice/	0.0629764
739	DraftCoin	https://coinmarketcap.com/currencies/draftcoin/	0.155234
740	Pure	https://coinmarketcap.com/currencies/pure/	0.329365
741	CrowdCoin	https://coinmarketcap.com/currencies/crowdcoin/	0.844832
742	Embers	https://coinmarketcap.com/currencies/embers/	0.0233613
743	Sense	https://coinmarketcap.com/currencies/sense/	0.00933049
744	PlusCoin	https://coinmarketcap.com/currencies/pluscoin/	0.000224872
745	Wild Crypto	https://coinmarketcap.com/currencies/wild-crypto/	0.0472765
746	Unitus	https://coinmarketcap.com/currencies/unitus/	0.0246261
747	Interstellar ...	https://coinmarketcap.com/currencies/interstellar-holdings/	0.00521293
748	Capricoin	https://coinmarketcap.com/currencies/capricoin/	0.57674
749	BiblePay	https://coinmarketcap.com/currencies/biblepay/	0.00215757
750	42-coin	https://coinmarketcap.com/currencies/42-coin/	26026.6
751	bitJob	https://coinmarketcap.com/currencies/student-coin/	0.0225423
752	Woodcoin	https://coinmarketcap.com/currencies/woodcoin/	0.134662
753	The Cypherfunks	https://coinmarketcap.com/currencies/the-cypherfunks/	2.26003e-05
754	StarCredits	https://coinmarketcap.com/currencies/starcredits/	0.236589
755	Argentum	https://coinmarketcap.com/currencies/argentum/	0.113905
756	Accelerator N...	https://coinmarketcap.com/currencies/accelerator-network/	3.27066
757	DRP Utility	https://coinmarketcap.com/currencies/drp-utility/	0.283863
758	Moin	https://coinmarketcap.com/currencies/moin/	0.130745
759	Cream	https://coinmarketcap.com/currencies/cream/	0.0212867
760	Tigereum	https://coinmarketcap.com/currencies/tigereum/	0.162617
761	ELTCOIN	https://coinmarketcap.com/currencies/eltcoin/	0.0105484
762	Unify	https://coinmarketcap.com/currencies/unify/	0.0524002
763	PlatinumBAR	https://coinmarketcap.com/currencies/platinumbar/	1.30222
764	Ace	https://coinmarketcap.com/currencies/ace/	0.226433
765	Canada eCoin	https://coinmarketcap.com/currencies/canada-ecoin/	0.00896231
766	Kolion	https://coinmarketcap.com/currencies/kolion/	1.23642
767	Global Jobcoin	https://coinmarketcap.com/currencies/global-jobcoin/	0.0633769
768	Hexx	https://coinmarketcap.com/currencies/hexx/	0.543355
769	PetroDollar	https://coinmarketcap.com/currencies/petrodollar/	0.0131707
770	Zennies	https://coinmarketcap.com/currencies/zennies/	0.000828139
771	GanjaCoin	https://coinmarketcap.com/currencies/ganjacoin/	0.0617512
772	Shekel	https://coinmarketcap.com/currencies/shekel/	0.00933359
773	Centurion	https://coinmarketcap.com/currencies/centurion/	0.0108819
774	WandX	https://coinmarketcap.com/currencies/wandx/	0.0634205
775	Bytecent	https://coinmarketcap.com/currencies/bytecent/	0.376757
776	ArbitrageCT	https://coinmarketcap.com/currencies/arbitragect/	0.0090159
777	Legends Room	https://coinmarketcap.com/currencies/legends-room/	0.384145
778	NetCoin	https://coinmarketcap.com/currencies/netcoin/	0.000967188
779	Guncoin	https://coinmarketcap.com/currencies/guncoin/	0.00364555
780	FujiCoin	https://coinmarketcap.com/currencies/fujicoin/	0.000573966
781	RouletteToken	https://coinmarketcap.com/currencies/roulettetoken/	0.0723096
782	Bitdeal	https://coinmarketcap.com/currencies/bitdeal/	0.00409195
783	Megacoin	https://coinmarketcap.com/currencies/megacoin/	0.0194342
784	Dinastycoin	https://coinmarketcap.com/currencies/dinastycoin/	0.000453824
785	NuShares	https://coinmarketcap.com/currencies/nushares/	0.000249777
786	DFSCoin	https://coinmarketcap.com/currencies/dfscoin/	0.0397514
787	Startcoin	https://coinmarketcap.com/currencies/startcoin/	0.0152872
788	CryptoCarbon	https://coinmarketcap.com/currencies/cryptocarbon/	0.192992
789	Authorship	https://coinmarketcap.com/currencies/authorship/	0.00831355
790	Happycoin	https://coinmarketcap.com/currencies/happycoin/	0.0464613
791	Equal	https://coinmarketcap.com/currencies/equal/	0.00198687
792	EtherSportz	https://coinmarketcap.com/currencies/ethersportz/	0.127954
793	Manna	https://coinmarketcap.com/currencies/manna/	0.014359
794	Ethereum Cash	https://coinmarketcap.com/currencies/ethereumcash/	0.0425951
795	PeepCoin	https://coinmarketcap.com/currencies/peepcoin/	5.30454e-05
796	LeviarCoin	https://coinmarketcap.com/currencies/leviarcoin/	0.0528233
797	Deutsche eMark	https://coinmarketcap.com/currencies/deutsche-emark/	0.0160426
798	Bata	https://coinmarketcap.com/currencies/bata/	0.115815
799	Emphy	https://coinmarketcap.com/currencies/emphy/	0.0752345
800	Soma	https://coinmarketcap.com/currencies/soma/	0.138085
801	Machinecoin	https://coinmarketcap.com/currencies/machinecoin/	0.0268581
802	TittieCoin	https://coinmarketcap.com/currencies/tittiecoin/	0.000443675
803	ParkByte	https://coinmarketcap.com/currencies/parkbyte/	0.113101
804	Elcoin	https://coinmarketcap.com/currencies/elcoin-el/	0.047855
805	Suretly	https://coinmarketcap.com/currencies/suretly/	2.41922
806	Elementrem	https://coinmarketcap.com/currencies/elementrem/	0.0200877
807	ERC20	https://coinmarketcap.com/currencies/erc20/	0.000327989
808	Kubera Coin	https://coinmarketcap.com/currencies/kubera-coin/	0.00448807
809	MojoCoin	https://coinmarketcap.com/currencies/mojocoin/	0.0412025
810	Phoenixcoin	https://coinmarketcap.com/currencies/phoenixcoin/	0.00743991
811	GoldBlocks	https://coinmarketcap.com/currencies/goldblocks/	0.0313074
812	OP Coin	https://coinmarketcap.com/currencies/op-coin/	0.00334727
813	WhaleCoin	https://coinmarketcap.com/currencies/whalecoin/	0.0587727
814	VapersCoin	https://coinmarketcap.com/currencies/vaperscoin/	0.000602393
815	Copico	https://coinmarketcap.com/currencies/copico/	0.0296752
816	BlazeCoin	https://coinmarketcap.com/currencies/blazecoin/	0.000743991
817	iEthereum	https://coinmarketcap.com/currencies/iethereum/	0.0251256
818	Grimcoin	https://coinmarketcap.com/currencies/grimcoin/	0.00484001
819	Netko	https://coinmarketcap.com/currencies/netko/	0.0870464
820	Ethereum Gold	https://coinmarketcap.com/currencies/ethereum-gold/	0.0367268
821	Bitair	https://coinmarketcap.com/currencies/bitair/	0.000612425
822	Aricoin	https://coinmarketcap.com/currencies/aricoin/	0.00171118
823	Bitcoin Scrypt	https://coinmarketcap.com/currencies/bitcoin-scrypt/	0.0233613
824	Cryptonite	https://coinmarketcap.com/currencies/cryptonite/	0.000967188
825	Sugar Exchange	https://coinmarketcap.com/currencies/sugar-exchange/	0.109843
826	Minereum	https://coinmarketcap.com/currencies/minereum/	0.151553
827	8Bit	https://coinmarketcap.com/currencies/8bit/	0.256503
828	MACRON	https://coinmarketcap.com/currencies/macron/	0.000933841
829	Mao Zedong	https://coinmarketcap.com/currencies/mao-zedong/	0.0595192
830	Rimbit	https://coinmarketcap.com/currencies/rimbit/	0.00187088
831	Cryptojacks	https://coinmarketcap.com/currencies/cryptojacks/	0.000902297
832	Bitcoin Red	https://coinmarketcap.com/currencies/bitcoin-red/	0.0176258
833	CarTaxi Token	https://coinmarketcap.com/currencies/cartaxi-token/	0.00907131
834	BitBar	https://coinmarketcap.com/currencies/bitbar/	9.63626
835	High Voltage	https://coinmarketcap.com/currencies/high-voltage/	0.231831
836	AquariusCoin	https://coinmarketcap.com/currencies/aquariuscoin/	0.202985
837	Qbic	https://coinmarketcap.com/currencies/qbic/	0.3063
838	Garlicoin	https://coinmarketcap.com/currencies/garlicoin/	0.0462265
839	TagCoin	https://coinmarketcap.com/currencies/tagcoin/	0.0496029
840	Intelligent T...	https://coinmarketcap.com/currencies/intelligent-trading-tech/	0.0322235
841	TEKcoin	https://coinmarketcap.com/currencies/tekcoin/	0.000223197
842	Dashcoin	https://coinmarketcap.com/currencies/dashcoin/	0.0179227
843	DROXNE	https://coinmarketcap.com/currencies/droxne/	0.00446394
844	Galactrum	https://coinmarketcap.com/currencies/galactrum/	0.340184
845	GlassCoin	https://coinmarketcap.com/currencies/glasscoin/	0.105349
846	Onix	https://coinmarketcap.com/currencies/onix/	0.0108623
847	Litecoin Plus	https://coinmarketcap.com/currencies/litecoin-plus/	0.242913
848	Bitcoin Fast	https://coinmarketcap.com/currencies/bitcoinfast/	0.0281972
849	Cashcoin	https://coinmarketcap.com/currencies/cashcoin/	0.00610072
850	Scorecoin	https://coinmarketcap.com/currencies/scorecoin/	0.00681279
851	HiCoin	https://coinmarketcap.com/currencies/hicoin/	0.00148991
852	Cabbage	https://coinmarketcap.com/currencies/cabbage/	0.0264861
853	Phantomx	https://coinmarketcap.com/currencies/phantomx/	0.0174065
854	Pakcoin	https://coinmarketcap.com/currencies/pakcoin/	0.00522713
855	DaxxCoin	https://coinmarketcap.com/currencies/daxxcoin/	0.000520793
856	TOKYO	https://coinmarketcap.com/currencies/tokyo/	0.00197602
857	Tokugawa	https://coinmarketcap.com/currencies/tokugawa/	0.263893
858	NevaCoin	https://coinmarketcap.com/currencies/nevacoin/	0.0933466
859	Truckcoin	https://coinmarketcap.com/currencies/truckcoin/	0.00141358
860	Crystal Clear	https://coinmarketcap.com/currencies/crystal-clear/	0.0486623
861	AdCoin	https://coinmarketcap.com/currencies/adcoin/	0.0415654
862	Datacoin	https://coinmarketcap.com/currencies/datacoin/	0.0078119
863	Freicoin	https://coinmarketcap.com/currencies/freicoin/	0.0078119
864	Steneum Coin	https://coinmarketcap.com/currencies/steneum-coin/	0.092724
865	Bolivarcoin	https://coinmarketcap.com/currencies/bolivarcoin/	0.024148
866	Quebecoin	https://coinmarketcap.com/currencies/quebecoin/	0.0148054
867	Aerium	https://coinmarketcap.com/currencies/aerium/	0.00231681
868	BoostCoin	https://coinmarketcap.com/currencies/boostcoin/	0.0186742
869	CoinonatX	https://coinmarketcap.com/currencies/coinonatx/	0.011714
870	Speedcash	https://coinmarketcap.com/currencies/speedcash/	0.501184
871	Helleniccoin	https://coinmarketcap.com/currencies/helleniccoin/	0.0031987
872	Ethereum Dark	https://coinmarketcap.com/currencies/ethereum-dark/	0.13389
873	Blakecoin	https://coinmarketcap.com/currencies/blakecoin/	0.0131271
874	Senderon	https://coinmarketcap.com/currencies/senderon/	0.00424075
875	Golfcoin	https://coinmarketcap.com/currencies/golfcoin/	0.000148798
876	EcoCoin	https://coinmarketcap.com/currencies/ecocoin/	0.155818
877	BriaCoin	https://coinmarketcap.com/currencies/briacoin/	0.25
878	Newbium	https://coinmarketcap.com/currencies/newbium/	0.0034588
879	808Coin	https://coinmarketcap.com/currencies/808coin/	4.27495e-05
880	LiteBar	https://coinmarketcap.com/currencies/litebar/	0.18756
881	C-Bit	https://coinmarketcap.com/currencies/c-bit/	0.00105091
882	RevolverCoin	https://coinmarketcap.com/currencies/revolvercoin/	0.00729111
883	Coin2.1	https://coinmarketcap.com/currencies/coin2-1/	0.00200872
884	Pioneer Coin	https://coinmarketcap.com/currencies/pioneer-coin/	0.0589985
885	YENTEN	https://coinmarketcap.com/currencies/yenten/	0.0298906
886	bitEUR	https://coinmarketcap.com/currencies/biteur/	1.40862
887	Prime-XI	https://coinmarketcap.com/currencies/prime-xi/	0.00769356
888	StrongHands	https://coinmarketcap.com/currencies/stronghands/	2.82054e-07
889	HomeBlockCoin	https://coinmarketcap.com/currencies/homeblockcoin/	0.0299657
890	Theresa May Coin	https://coinmarketcap.com/currencies/theresa-may-coin/	0.00399306
891	TajCoin	https://coinmarketcap.com/currencies/tajcoin/	0.0164147
892	PayCon	https://coinmarketcap.com/currencies/paycon/	0.0062385
893	Desire	https://coinmarketcap.com/currencies/desire/	0.139392
894	Jin Coin	https://coinmarketcap.com/currencies/jin-coin/	0.0139126
895	Dalecoin	https://coinmarketcap.com/currencies/dalecoin/	0.293071
896	LiteBitcoin	https://coinmarketcap.com/currencies/litebitcoin/	0.00441351
897	BitCoal	https://coinmarketcap.com/currencies/bitcoal/	0.0229021
898	EOT Token	https://coinmarketcap.com/currencies/eot-token/	0.00406007
899	Eryllium	https://coinmarketcap.com/currencies/eryllium/	0.015039
900	Virta Unique ...	https://coinmarketcap.com/currencies/virta-unique-coin/	0.00135402
901	BipCoin	https://coinmarketcap.com/currencies/bipcoin/	0.0488058
902	BnrtxCoin	https://coinmarketcap.com/currencies/bnrtxcoin/	0.00260397
903	Iconic	https://coinmarketcap.com/currencies/iconic/	0.110394
904	Master Swiscoin	https://coinmarketcap.com/currencies/master-swiscoin/	0.0014376
905	Useless Ether...	https://coinmarketcap.com/currencies/useless-ethereum-token/	0.013902
906	Royal Kingdom...	https://coinmarketcap.com/currencies/royal-kingdom-coin/	0.015973
907	VectorAI	https://coinmarketcap.com/currencies/vector/	0.00245517
908	WomenCoin	https://coinmarketcap.com/currencies/women/	0.00081839
909	Slevin	https://coinmarketcap.com/currencies/slevin/	0.000446394
910	GBCGoldCoin	https://coinmarketcap.com/currencies/gbcgoldcoin/	0.00260005
911	SONO	https://coinmarketcap.com/currencies/altcommunity-coin/	0.139796
912	BOAT	https://coinmarketcap.com/currencies/doubloon/	0.00156238
913	Veros	https://coinmarketcap.com/currencies/veros/	5.49792e-05
914	GeertCoin	https://coinmarketcap.com/currencies/geertcoin/	0.00523986
915	Save and Gain	https://coinmarketcap.com/currencies/save-and-gain/	0.00866433
916	AnarchistsPrime	https://coinmarketcap.com/currencies/anarchistsprime/	0.00531179
917	PRCoin	https://coinmarketcap.com/currencies/prcoin/	0.00119038
918	Rawcoin	https://coinmarketcap.com/currencies/rawcoin2/	0.0270794
919	Project-X	https://coinmarketcap.com/currencies/project-x/	149884.0
920	CrevaCoin	https://coinmarketcap.com/currencies/crevacoin/	0.000231508
921	LevoPlus	https://coinmarketcap.com/currencies/levoplus/	0.00185998
922	HarmonyCoin	https://coinmarketcap.com/currencies/harmonycoin-hmc/	0.00497571
923	CaliphCoin	https://coinmarketcap.com/currencies/caliphcoin/	0.000356172
924	Digital Money...	https://coinmarketcap.com/currencies/digital-money-bits/	0.00401755
925	POLY AI	https://coinmarketcap.com/currencies/poly-ai/	0.000367982
926	Cobinhood	https://coinmarketcap.com/currencies/cobinhood/	0.0711999
927	MUSE	https://coinmarketcap.com/currencies/bitshares-music/	0.940476
928	Credo	https://coinmarketcap.com/currencies/credo/	0.0220874
929	Maecenas	https://coinmarketcap.com/currencies/maecenas/	0.371995
930	Russian Miner...	https://coinmarketcap.com/currencies/russian-mining-coin/	7021.97
931	KiloCoin	https://coinmarketcap.com/currencies/kilocoin/	0.050517
932	Target Coin	https://coinmarketcap.com/currencies/target-coin/	0.0102124
933	Hedge	https://coinmarketcap.com/currencies/hedge/	2.40363
934	AsiaCoin	https://coinmarketcap.com/currencies/asiacoin/	0.00557993
935	bitqy	https://coinmarketcap.com/currencies/bitqy/	0.00242814
936	Ecobit	https://coinmarketcap.com/currencies/ecobit/	0.0168556
937	E-coin	https://coinmarketcap.com/currencies/e-coin/	19.6616
938	Pluton	https://coinmarketcap.com/currencies/pluton/	6.27268
939	Vcash	https://coinmarketcap.com/currencies/vcash/	0.336033
940	Unity Ingot	https://coinmarketcap.com/currencies/unity-ingot/	0.0237729
941	DCORP	https://coinmarketcap.com/currencies/dcorp/	0.528233
942	EventChain	https://coinmarketcap.com/currencies/eventchain/	0.136763
943	Prospectors Gold	https://coinmarketcap.com/currencies/prospectors-gold/	0.064132
944	Xenon	https://coinmarketcap.com/currencies/xenon/	0.0136296
945	Starta	https://coinmarketcap.com/currencies/starta/	0.685913
946	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel/	0.0509552
947	Masternodecoin	https://coinmarketcap.com/currencies/masternodecoin/	0.0619
948	Virtacoin	https://coinmarketcap.com/currencies/virtacoin/	0.000540583
949	Ixcoin	https://coinmarketcap.com/currencies/ixcoin/	0.112305
950	Carboncoin	https://coinmarketcap.com/currencies/carboncoin/	0.00014886
951	Giga Watt Token	https://coinmarketcap.com/currencies/giga-watt-token/	0.776514
952	REX	https://coinmarketcap.com/currencies/real-estate-tokens/	0.259876
953	Goodomy	https://coinmarketcap.com/currencies/goodomy/	0.00469517
954	Triaconta	https://coinmarketcap.com/currencies/triaconta/	7.4579
955	Bowhead	https://coinmarketcap.com/currencies/bowhead/	0.252436
956	LeafCoin	https://coinmarketcap.com/currencies/leafcoin/	7.43991e-05
957	AurumCoin	https://coinmarketcap.com/currencies/aurumcoin/	4.26783
958	YashCoin	https://coinmarketcap.com/currencies/yashcoin/	0.126702
959	BitBoost	https://coinmarketcap.com/currencies/bitboost/	0.0976116
960	Orbitcoin	https://coinmarketcap.com/currencies/orbitcoin/	0.392157
961	Darcrus	https://coinmarketcap.com/currencies/darcrus/	0.0889793
962	Universe	https://coinmarketcap.com/currencies/universe/	0.0627024
963	Photon	https://coinmarketcap.com/currencies/photon/	5.36142e-05
964	BitTokens	https://coinmarketcap.com/currencies/bittokens/	1.96171
965	WorldCoin	https://coinmarketcap.com/currencies/worldcoin/	0.00954372
966	Version	https://coinmarketcap.com/currencies/version/	0.00231558
967	Zetacoin	https://coinmarketcap.com/currencies/zetacoin/	0.00667729
968	FuckToken	https://coinmarketcap.com/currencies/fucktoken/	0.0186267
969	InPay	https://coinmarketcap.com/currencies/inpay/	0.107804
970	ICO OpenLedger	https://coinmarketcap.com/currencies/ico-openledger/	2.31208
971	IncaKoin	https://coinmarketcap.com/currencies/incakoin/	7.46523e-05
972	PopularCoin	https://coinmarketcap.com/currencies/popularcoin/	0.000296431
973	Project Decorum	https://coinmarketcap.com/currencies/project-decorum/	0.0198759
974	KekCoin	https://coinmarketcap.com/currencies/kekcoin/	0.093594
975	DeusCoin	https://coinmarketcap.com/currencies/deuscoin/	0.0888325
976	Anoncoin	https://coinmarketcap.com/currencies/anoncoin/	0.446841
977	Shorty	https://coinmarketcap.com/currencies/shorty/	0.00937428
978	MagicCoin	https://coinmarketcap.com/currencies/magiccoin/	0.127594
979	Skeincoin	https://coinmarketcap.com/currencies/skeincoin/	0.0703071
980	Commodity Ad ...	https://coinmarketcap.com/currencies/commodity-ad-network/	0.028209
981	BritCoin	https://coinmarketcap.com/currencies/britcoin/	0.0424075
982	MaxCoin	https://coinmarketcap.com/currencies/maxcoin/	0.0145609
983	Renos	https://coinmarketcap.com/currencies/renos/	0.0267837
984	InflationCoin	https://coinmarketcap.com/currencies/inflationcoin/	2.09524e-05
985	Fastcoin	https://coinmarketcap.com/currencies/fastcoin/	0.00550553
986	ShadowCash	https://coinmarketcap.com/currencies/shadowcash/	0.128636
987	Bitpark Coin	https://coinmarketcap.com/currencies/bitpark-coin/	0.0114575
988	FlutterCoin	https://coinmarketcap.com/currencies/fluttercoin/	0.00193438
989	InsaneCoin	https://coinmarketcap.com/currencies/insanecoin-insn/	0.0452413
990	Sovereign Hero	https://coinmarketcap.com/currencies/sovereign-hero/	175.816
991	HitCoin	https://coinmarketcap.com/currencies/hitcoin/	7.43991e-05
992	NEVERDIE	https://coinmarketcap.com/currencies/neverdie/	0.0196264
993	Fantomcoin	https://coinmarketcap.com/currencies/fantomcoin/	0.111599
994	Ultimate Secu...	https://coinmarketcap.com/currencies/ultimate-secure-cash/	0.0754406
995	UniCoin	https://coinmarketcap.com/currencies/unicoin/	0.247972
996	MetalCoin	https://coinmarketcap.com/currencies/metalcoin/	0.00915108
997	Bitradio	https://coinmarketcap.com/currencies/bitradio/	0.111711
998	Bitstar	https://coinmarketcap.com/currencies/bitstar/	0.0299828
999	Piggycoin	https://coinmarketcap.com/currencies/piggycoin/	0.00141351
1000	Monster Byte	https://coinmarketcap.com/currencies/monster-byte/	0.0406327
1001	EthBet	https://coinmarketcap.com/currencies/ethbet/	0.0801696
1002	Trollcoin	https://coinmarketcap.com/currencies/trollcoin/	0.00119177
1003	I0Coin	https://coinmarketcap.com/currencies/i0coin/	0.0322148
1004	HoboNickels	https://coinmarketcap.com/currencies/hobonickels/	0.0103415
1005	Rustbits	https://coinmarketcap.com/currencies/rustbits/	0.0182187
1006	Kobocoin	https://coinmarketcap.com/currencies/kobocoin/	0.0252911
1007	HOdlcoin	https://coinmarketcap.com/currencies/hodlcoin/	0.00371995
1008	Digitalcoin	https://coinmarketcap.com/currencies/digitalcoin/	0.0208998
1009	FuelCoin	https://coinmarketcap.com/currencies/fuelcoin/	0.00573079
1010	Triangles	https://coinmarketcap.com/currencies/triangles/	4.99106
1011	BTCtalkcoin	https://coinmarketcap.com/currencies/btctalkcoin/	0.0081839
1012	GAIA	https://coinmarketcap.com/currencies/gaia/	0.0201621
1013	FIMKrypto	https://coinmarketcap.com/currencies/fimkrypto/	0.000836096
1014	QubitCoin	https://coinmarketcap.com/currencies/qubitcoin/	0.00193438
1015	LanaCoin	https://coinmarketcap.com/currencies/lanacoin/	0.000520793
1016	SuperCoin	https://coinmarketcap.com/currencies/supercoin/	0.00951132
1017	Valorbit	https://coinmarketcap.com/currencies/valorbit/	7.43991e-05
1018	Flycoin	https://coinmarketcap.com/currencies/flycoin/	2.15547
1019	Bit20	https://coinmarketcap.com/currencies/bit20/	442505.0
1020	Nyancoin	https://coinmarketcap.com/currencies/nyancoin/	0.00133918
1021	Jetcoin	https://coinmarketcap.com/currencies/jetcoin/	0.0622218
1022	iTicoin	https://coinmarketcap.com/currencies/iticoin/	13.22
1023	SmartCoin	https://coinmarketcap.com/currencies/smartcoin/	0.0172862
1024	Billionaire T...	https://coinmarketcap.com/currencies/billionaire-token/	0.127197
1025	UltraCoin	https://coinmarketcap.com/currencies/ultracoin/	0.00900229
1026	Opal	https://coinmarketcap.com/currencies/opal/	0.0272141
1027	WayGuide	https://coinmarketcap.com/currencies/wayguide/	0.00409195
1028	bitSilver	https://coinmarketcap.com/currencies/bitsilver/	18.4322
1029	TrumpCoin	https://coinmarketcap.com/currencies/trumpcoin/	0.0605387
1030	Bitcurrency	https://coinmarketcap.com/currencies/bitcurrency/	0.00230637
1031	Tattoocoin (S...	https://coinmarketcap.com/currencies/tattoocoin/	0.00431515
1032	AmberCoin	https://coinmarketcap.com/currencies/ambercoin/	0.00885349
1033	Joulecoin	https://coinmarketcap.com/currencies/joulecoin/	0.0108588
1034	WavesGo	https://coinmarketcap.com/currencies/wavesgo/	0.0401013
1035	Halcyon	https://coinmarketcap.com/currencies/halcyon/	0.0668848
1036	SwagBucks	https://coinmarketcap.com/currencies/swagbucks/	0.992559
1037	PureVidz	https://coinmarketcap.com/currencies/purevidz/	0.00298169
1038	bitBTC	https://coinmarketcap.com/currencies/bitbtc/	8745.2
1039	Kurrent	https://coinmarketcap.com/currencies/kurrent/	0.00585552
1040	DigitalDevelo...	https://coinmarketcap.com/currencies/digital-developers-fund/	0.0700095
1041	Sterlingcoin	https://coinmarketcap.com/currencies/sterlingcoin/	0.0803356
1042	Bitgem	https://coinmarketcap.com/currencies/bitgem/	5.57993
1043	PostCoin	https://coinmarketcap.com/currencies/postcoin/	0.0208021
1044	Coin(O)	https://coinmarketcap.com/currencies/coin/	0.00312476
1045	KushCoin	https://coinmarketcap.com/currencies/kushcoin/	0.0585521
1046	Bitz	https://coinmarketcap.com/currencies/bitz/	0.160428
1047	Prototanium	https://coinmarketcap.com/currencies/prototanium/	1.5914
1048	Eternity	https://coinmarketcap.com/currencies/eternity/	0.0743991
1049	Link Platform	https://coinmarketcap.com/currencies/link-platform/	18.5998
1050	Motocoin	https://coinmarketcap.com/currencies/motocoin/	0.0156822
1051	Cypher	https://coinmarketcap.com/currencies/cypher/	0.0474666
1052	GoldReserve	https://coinmarketcap.com/currencies/goldreserve/	0.0173257
1053	eBitcoinCash	https://coinmarketcap.com/currencies/ebitcoin-cash/	0.0319974
1054	Visio	https://coinmarketcap.com/currencies/visio/	0.00574718
1055	CryptoForecast	https://coinmarketcap.com/currencies/cryptoforecast/	0.00617589
1056	Fujinto	https://coinmarketcap.com/currencies/fujinto/	0.00427812
1057	Titcoin	https://coinmarketcap.com/currencies/titcoin/	0.00562705
1058	Tigercoin	https://coinmarketcap.com/currencies/tigercoin/	0.00639832
1059	Chronos	https://coinmarketcap.com/currencies/chronos/	0.0037083
1060	BigUp	https://coinmarketcap.com/currencies/bigup/	0.000127509
1061	ChessCoin	https://coinmarketcap.com/currencies/chesscoin/	0.00493231
1062	Signatum	https://coinmarketcap.com/currencies/signatum/	0.00245517
1063	bitGold	https://coinmarketcap.com/currencies/bitgold/	1385.43
1064	iCoin	https://coinmarketcap.com/currencies/icoin/	0.00877909
1065	Marscoin	https://coinmarketcap.com/currencies/marscoin/	0.00907669
1066	CryptoInsight	https://coinmarketcap.com/currencies/trackr/	0.0204442
1067	PX	https://coinmarketcap.com/currencies/px/	0.00260397
1068	SecureCoin	https://coinmarketcap.com/currencies/securecoin/	0.0299828
1069	PayCoin	https://coinmarketcap.com/currencies/paycoin2/	0.0213346
1070	CannaCoin	https://coinmarketcap.com/currencies/cannacoin/	0.0535673
1071	Ammo Reloaded	https://coinmarketcap.com/currencies/ammo-reloaded/	0.00319916
1072	Gapcoin	https://coinmarketcap.com/currencies/gapcoin/	0.0187486
1073	SACoin	https://coinmarketcap.com/currencies/sacoin/	0.0334796
1074	Nekonium	https://coinmarketcap.com/currencies/nekonium/	0.0200133
1075	Octanox	https://coinmarketcap.com/currencies/octanox/	0.0275277
1076	Philosopher S...	https://coinmarketcap.com/currencies/philosopher-stones/	0.0379435
1077	Abjcoin	https://coinmarketcap.com/currencies/abjcoin/	0.0269601
1078	Shadow Token	https://coinmarketcap.com/currencies/shadow-token/	0.0314711
1079	GlobalCoin	https://coinmarketcap.com/currencies/globalcoin/	0.00334796
1080	BERNcash	https://coinmarketcap.com/currencies/berncash/	0.00302977
1081	SproutsExtreme	https://coinmarketcap.com/currencies/sproutsextreme/	7.43991e-05
1082	Dix Asset	https://coinmarketcap.com/currencies/dix-asset/	2.13087e-06
1083	Evil Coin	https://coinmarketcap.com/currencies/evil-coin/	0.0100572
1084	Ratecoin	https://coinmarketcap.com/currencies/ratecoin/	0.00171048
1085	Emerald Crypto	https://coinmarketcap.com/currencies/emerald/	0.0106391
1086	Atomic Coin	https://coinmarketcap.com/currencies/atomic-coin/	0.0134505
1087	VirtualCoin	https://coinmarketcap.com/currencies/virtualcoin/	0.0197902
1088	Mineum	https://coinmarketcap.com/currencies/mineum/	0.0209731
1089	Advanced Inte...	https://coinmarketcap.com/currencies/advanced-internet-blocks/	0.00610915
1090	BlockPay	https://coinmarketcap.com/currencies/blockpay/	0.0362227
1091	Independent M...	https://coinmarketcap.com/currencies/independent-money-system/	0.036546
1092	Global Tour Coin	https://coinmarketcap.com/currencies/global-tour-coin/	0.00654712
1093	SpaceCoin	https://coinmarketcap.com/currencies/spacecoin/	0.00884736
1094	Xios	https://coinmarketcap.com/currencies/xios/	0.0890022
1095	IslaCoin	https://coinmarketcap.com/currencies/islacoin/	0.125586
1096	RedCoin	https://coinmarketcap.com/currencies/redcoin/	0.00252957
1097	IrishCoin	https://coinmarketcap.com/currencies/irishcoin/	0.00520793
1098	Dollarcoin	https://coinmarketcap.com/currencies/dollarcoin/	0.0199389
1099	DigiCube	https://coinmarketcap.com/currencies/digicube/	7.43991e-05
1100	LeaCoin	https://coinmarketcap.com/currencies/leacoin/	0.000521153
1101	FUNCoin	https://coinmarketcap.com/currencies/funcoin/	0.0308493
1102	Swing	https://coinmarketcap.com/currencies/swing/	0.0569923
1103	ZoZoCoin	https://coinmarketcap.com/currencies/zozocoin/	0.291644
1104	Darsek	https://coinmarketcap.com/currencies/darsek/	0.00892789
1105	Sativacoin	https://coinmarketcap.com/currencies/sativacoin/	0.0239425
1106	VoteCoin	https://coinmarketcap.com/currencies/votecoin/	0.0101183
1107	Rubies	https://coinmarketcap.com/currencies/rubies/	0.0159016
1108	AmsterdamCoin	https://coinmarketcap.com/currencies/amsterdamcoin/	0.00327356
1109	SecretCoin	https://coinmarketcap.com/currencies/secretcoin/	0.0387619
1110	Zurcoin	https://coinmarketcap.com/currencies/zurcoin/	0.00185998
1111	Confido	https://coinmarketcap.com/currencies/confido/	0.01795
1112	Bankcoin	https://coinmarketcap.com/currencies/bankcoin/	0.0155526
1113	Virtacoinplus	https://coinmarketcap.com/currencies/virtacoinplus/	0.0145167
1114	Ccore	https://coinmarketcap.com/currencies/ccore/	0.107412
1115	GameUnits	https://coinmarketcap.com/currencies/gameunits/	0.0446662
1116	Yacoin	https://coinmarketcap.com/currencies/yacoin/	0.00126478
1117	Kayicoin	https://coinmarketcap.com/currencies/kayicoin/	0.000539584
1118	Zlancer	https://coinmarketcap.com/currencies/zcash-gold/	0.0746626
1119	Pascal Lite	https://coinmarketcap.com/currencies/pascal-lite/	0.029834
1120	SatoshiMadness	https://coinmarketcap.com/currencies/satoshimadness/	7.43991e-05
1121	Honey	https://coinmarketcap.com/currencies/honey/	0.322279
1122	Peerguess	https://coinmarketcap.com/currencies/guess/	0.013243
1123	GlobalToken	https://coinmarketcap.com/currencies/globaltoken/	0.00523208
1124	AllSafe	https://coinmarketcap.com/currencies/allsafe/	0.0177789
1125	OctoCoin	https://coinmarketcap.com/currencies/octocoin/	0.00270433
1126	RonPaulCoin	https://coinmarketcap.com/currencies/ronpaulcoin/	0.155828
1127	Slimcoin	https://coinmarketcap.com/currencies/slimcoin/	0.00946237
1128	ChanCoin	https://coinmarketcap.com/currencies/chancoin/	0.0176053
1129	Catcoin	https://coinmarketcap.com/currencies/catcoin/	0.0215013
1130	BumbaCoin	https://coinmarketcap.com/currencies/bumbacoin/	0.00587778
1131	ICOBID	https://coinmarketcap.com/currencies/icobid/	0.00124144
1132	300 Token	https://coinmarketcap.com/currencies/300-token/	442.087
1133	GlobalBoost-Y	https://coinmarketcap.com/currencies/globalboost-y/	0.00944388
1134	BROTHER	https://coinmarketcap.com/currencies/brat/	0.00081839
1135	Impact	https://coinmarketcap.com/currencies/impact/	0.00119038
1136	Quatloo	https://coinmarketcap.com/currencies/quatloo/	0.016591
1137	SixEleven	https://coinmarketcap.com/currencies/sixeleven/	0.289689
1138	ReeCoin	https://coinmarketcap.com/currencies/reecoin/	4.93268e-05
1139	Enigma	https://coinmarketcap.com/currencies/enigma/	0.175582
1140	ParallelCoin	https://coinmarketcap.com/currencies/parallelcoin/	0.388962
1141	Evotion	https://coinmarketcap.com/currencies/evotion/	0.0372927
1142	Influxcoin	https://coinmarketcap.com/currencies/influxcoin/	0.0706791
1143	Veltor	https://coinmarketcap.com/currencies/veltor/	0.212112
1144	Firecoin	https://coinmarketcap.com/currencies/firecoin/	1.19046
1145	MustangCoin	https://coinmarketcap.com/currencies/mustangcoin/	0.185754
1146	Polcoin	https://coinmarketcap.com/currencies/polcoin/	0.00141358
1147	Eurocoin	https://coinmarketcap.com/currencies/eurocoin/	0.00891037
1148	Joincoin	https://coinmarketcap.com/currencies/joincoin/	0.0358603
1149	SoonCoin	https://coinmarketcap.com/currencies/sooncoin/	0.00855589
1150	GuccioneCoin	https://coinmarketcap.com/currencies/guccionecoin/	0.00505914
1151	Elacoin	https://coinmarketcap.com/currencies/elacoin/	0.248418
1152	HempCoin	https://coinmarketcap.com/currencies/hempcoin-hmp/	7.43991e-05
1153	Franko	https://coinmarketcap.com/currencies/franko/	0.107879
1154	Bitcoin 21	https://coinmarketcap.com/currencies/bitcoin-21/	0.124098
1155	Creatio	https://coinmarketcap.com/currencies/creatio/	0.00476403
1156	Roofs	https://coinmarketcap.com/currencies/roofs/	0.000743991
1157	Californium	https://coinmarketcap.com/currencies/californium/	0.0386131
1158	Blackstar	https://coinmarketcap.com/currencies/blackstar/	0.000148798
1159	SOILcoin	https://coinmarketcap.com/currencies/soilcoin/	0.0163678
1160	Money	https://coinmarketcap.com/currencies/money/	0.00200877
1161	Beatcoin	https://coinmarketcap.com/currencies/beatcoin/	0.0591997
1162	Trident Group	https://coinmarketcap.com/currencies/trident/	0.0962722
1163	Acoin	https://coinmarketcap.com/currencies/acoin/	0.072587
1164	PoSToken	https://coinmarketcap.com/currencies/postoken/	0.0897827
1165	Allion	https://coinmarketcap.com/currencies/allion/	0.0141777
1166	GPU Coin	https://coinmarketcap.com/currencies/gpu-coin/	0.00213443
1167	CacheCoin	https://coinmarketcap.com/currencies/cachecoin/	0.0204932
1168	Mincoin	https://coinmarketcap.com/currencies/mincoin/	0.0195192
1169	AntiBitcoin	https://coinmarketcap.com/currencies/antibitcoin/	0.00483594
1170	WARP	https://coinmarketcap.com/currencies/warp/	0.0740271
1171	Luna Coin	https://coinmarketcap.com/currencies/luna-coin/	0.046529
1172	GoldPieces	https://coinmarketcap.com/currencies/goldpieces/	0.0650556
1173	CompuCoin	https://coinmarketcap.com/currencies/compucoin/	0.00401755
1174	Comet	https://coinmarketcap.com/currencies/comet/	0.089762
1175	iDice	https://coinmarketcap.com/currencies/idice/	0.0492997
1176	Asiadigicoin	https://coinmarketcap.com/currencies/asiadigicoin/	0.00309642
1177	Marijuanacoin	https://coinmarketcap.com/currencies/marijuanacoin/	0.0468714
1178	Digital Rupees	https://coinmarketcap.com/currencies/digital-rupees/	0.000148798
1179	ExchangeN	https://coinmarketcap.com/currencies/exchangen/	0.0148798
1180	Spots	https://coinmarketcap.com/currencies/spots/	0.00336779
1181	Neuro	https://coinmarketcap.com/currencies/neuro/	0.00148798
1182	Bolenum	https://coinmarketcap.com/currencies/bolenum/	0.00743991
1183	FinCoin	https://coinmarketcap.com/currencies/fincoin/	0.00576052
1184	Gold Pressed ...	https://coinmarketcap.com/currencies/gold-pressed-latinum/	0.277955
1185	Crypto	https://coinmarketcap.com/currencies/crypto/	0.00524072
1186	Coinonat	https://coinmarketcap.com/currencies/coinonat/	0.00817659
1187	X-Coin	https://coinmarketcap.com/currencies/x-coin/	0.00568519
1188	Debitcoin	https://coinmarketcap.com/currencies/debitcoin/	0.00386438
1189	Bitcoin Planet	https://coinmarketcap.com/currencies/bitcoin-planet/	0.0108623
1190	BillaryCoin	https://coinmarketcap.com/currencies/billarycoin/	0.0075143
1191	SongCoin	https://coinmarketcap.com/currencies/songcoin/	0.00201337
1192	EagleCoin	https://coinmarketcap.com/currencies/eaglecoin/	0.0312088
1193	Cannation	https://coinmarketcap.com/currencies/cannation/	0.0263657
1194	Metal Music Coin	https://coinmarketcap.com/currencies/metal-music-coin/	0.00081839
1195	BenjiRolls	https://coinmarketcap.com/currencies/benjirolls/	0.00316816
1196	Flaxscript	https://coinmarketcap.com/currencies/flaxscript/	0.0112343
1197	VIP Tokens	https://coinmarketcap.com/currencies/vip-tokens/	0.000743991
1198	PIECoin	https://coinmarketcap.com/currencies/piecoin/	0.00550553
1199	Litecred	https://coinmarketcap.com/currencies/litecred/	0.00200877
1200	FuzzBalls	https://coinmarketcap.com/currencies/fuzzballs/	0.0124639
1201	DAPPSTER	https://coinmarketcap.com/currencies/dappster/	0.000595192
1202	Shilling	https://coinmarketcap.com/currencies/shilling/	0.00900229
1203	Printerium	https://coinmarketcap.com/currencies/printerium/	0.00474948
1204	BitQuark	https://coinmarketcap.com/currencies/bitquark/	0.00557993
1205	MindCoin	https://coinmarketcap.com/currencies/mindcoin/	0.00342236
1206	CryptoEscudo	https://coinmarketcap.com/currencies/cryptoescudo/	0.000371995
1207	Zayedcoin	https://coinmarketcap.com/currencies/zayedcoin/	0.00833269
1208	Uro	https://coinmarketcap.com/currencies/uro/	0.0429283
1209	QuazarCoin	https://coinmarketcap.com/currencies/quazarcoin/	0.00743991
1210	BitAsean	https://coinmarketcap.com/currencies/bitasean/	0.0102221
1211	Solarflarecoin	https://coinmarketcap.com/currencies/solarflarecoin/	0.00342236
1212	StarCash Network	https://coinmarketcap.com/currencies/starcash-network/	0.0505914
1213	Artex Coin	https://coinmarketcap.com/currencies/artex-coin/	0.00248967
1214	Bitcedi	https://coinmarketcap.com/currencies/bitcedi/	0.0079607
1215	Pulse	https://coinmarketcap.com/currencies/pulse/	0.00319916
1216	Network Token	https://coinmarketcap.com/currencies/network-token/	0.00391458
1217	PonziCoin	https://coinmarketcap.com/currencies/ponzicoin/	0.0529345
1218	Kronecoin	https://coinmarketcap.com/currencies/kronecoin/	0.0075143
1219	Ride My Car	https://coinmarketcap.com/currencies/ride-my-car/	0.000446394
1220	ZetaMicron	https://coinmarketcap.com/currencies/zetamicron/	7.43991e-05
1221	EGO	https://coinmarketcap.com/currencies/ego/	0.000743991
1222	Unrealcoin	https://coinmarketcap.com/currencies/unrealcoin/	0.00632392
1223	Remicoin	https://coinmarketcap.com/currencies/remicoin/	0.0235845
1224	BowsCoin	https://coinmarketcap.com/currencies/bowscoin/	0.0078863
1225	HealthyWormCoin	https://coinmarketcap.com/currencies/healthywormcoin/	0.000371995
1226	CoExistCoin	https://coinmarketcap.com/currencies/coexistcoin/	0.00148628
1227	CryptoWorldX ...	https://coinmarketcap.com/currencies/cryptoworldx-token/	0.000669592
1228	LiteCoin Ultra	https://coinmarketcap.com/currencies/litecoin-ultra/	0.0384544
1229	ARbit	https://coinmarketcap.com/currencies/arbit/	0.00476154
1230	Jewels	https://coinmarketcap.com/currencies/jewels/	0.00193438
1231	JavaScript Token	https://coinmarketcap.com/currencies/javascript-token/	0.00476154
1232	MiloCoin	https://coinmarketcap.com/currencies/milocoin/	0.00349676
1233	Sojourn	https://coinmarketcap.com/currencies/sojourn/	0.0751849
1234	KingN Coin	https://coinmarketcap.com/currencies/kingn-coin/	17.8561
1235	BiosCrypto	https://coinmarketcap.com/currencies/bios-crypto/	0.00171118
1236	Orlycoin	https://coinmarketcap.com/currencies/orlycoin/	0.000967188
1237	Dreamcoin	https://coinmarketcap.com/currencies/dreamcoin/	0.0142102
1238	RSGPcoin	https://coinmarketcap.com/currencies/rsgpcoin/	20.0316
1239	Steps	https://coinmarketcap.com/currencies/steps/	0.00185998
1240	TAGRcoin	https://coinmarketcap.com/currencies/tagrcoin/	0.000892789
1241	G3N	https://coinmarketcap.com/currencies/genstake/	0.00453834
1242	Wild Beast Block	https://coinmarketcap.com/currencies/wild-beast-block/	0.185998
1243	ImpulseCoin	https://coinmarketcap.com/currencies/impulsecoin/	0.00163678
1244	LetItRide	https://coinmarketcap.com/currencies/letitride/	0.000892789
1245	Braincoin	https://coinmarketcap.com/currencies/braincoin/	0.00319916
1246	Ripto Bux	https://coinmarketcap.com/currencies/ripto-bux/	7.77827e-05
1247	Zonecoin	https://coinmarketcap.com/currencies/zonecoin/	0.0113831
1248	Madcoin	https://coinmarketcap.com/currencies/madcoin/	0.0160637
1249	PlayerCoin	https://coinmarketcap.com/currencies/playercoin/	0.00081839
1250	OsmiumCoin	https://coinmarketcap.com/currencies/osmiumcoin/	0.0317684
1251	CRTCoin	https://coinmarketcap.com/currencies/crtcoin/	0.357115
1252	PosEx	https://coinmarketcap.com/currencies/posex/	0.0110855
1253	PLNcoin	https://coinmarketcap.com/currencies/plncoin/	0.00156238
1254	Destiny	https://coinmarketcap.com/currencies/destiny/	0.0166712
1255	Cthulhu Offer...	https://coinmarketcap.com/currencies/cthulhu-offerings/	0.00982068
1256	JobsCoin	https://coinmarketcap.com/currencies/jobscoin/	0.000223197
1257	Torcoin	https://coinmarketcap.com/currencies/torcoin-tor/	0.0746223
1258	Credence Coin	https://coinmarketcap.com/currencies/credence-coin/	0.00682349
1259	Xonecoin	https://coinmarketcap.com/currencies/xonecoin/	0.0532697
1260	Bitvolt	https://coinmarketcap.com/currencies/bitvolt/	0.00133918
1261	Antilitecoin	https://coinmarketcap.com/currencies/antilitecoin/	0.000669592
1262	Dollar Online	https://coinmarketcap.com/currencies/dollar-online/	0.027974
1263	SydPak	https://coinmarketcap.com/currencies/sydpak/	0.119038
1264	iBank	https://coinmarketcap.com/currencies/ibank/	0.00394315
1265	BioBar	https://coinmarketcap.com/currencies/biobar/	0.0182278
1266	Argus	https://coinmarketcap.com/currencies/argus/	0.0139673
1267	SocialCoin	https://coinmarketcap.com/currencies/socialcoin-socc/	0.0101183
1268	Coimatic 3.0	https://coinmarketcap.com/currencies/coimatic-3/	0.00596542
1269	NodeCoin	https://coinmarketcap.com/currencies/nodecoin/	0.00654712
1270	P7Coin	https://coinmarketcap.com/currencies/p7coin/	0.000297596
1271	Elysium	https://coinmarketcap.com/currencies/elysium/	0.00260397
1272	Coimatic 2.0	https://coinmarketcap.com/currencies/coimatic-2/	0.000623883
1273	Selfiecoin	https://coinmarketcap.com/currencies/selfiecoin/	7.43991e-05
1274	Ulatech	https://coinmarketcap.com/currencies/ulatech/	0.0374821
1275	FuturXe	https://coinmarketcap.com/currencies/futurexe/	0.0269508
1276	Coupecoin	https://coinmarketcap.com/currencies/coupecoin/	2.84619e-05
1277	GeyserCoin	https://coinmarketcap.com/currencies/geysercoin/	0.122163
1278	Magnum	https://coinmarketcap.com/currencies/magnum/	0.00111599
1279	Tychocoin	https://coinmarketcap.com/currencies/tychocoin/	0.000914408
1280	Concoin	https://coinmarketcap.com/currencies/concoin/	0.00610072
1281	Vault Coin	https://coinmarketcap.com/currencies/vault-coin/	0.000148798
1282	Abncoin	https://coinmarketcap.com/currencies/abncoin/	0.0282355
1283	Digital Credits	https://coinmarketcap.com/currencies/digital-credits/	0.000297596
1284	PizzaCoin	https://coinmarketcap.com/currencies/pizzacoin/	0.00119038
1285	CCMiner	https://coinmarketcap.com/currencies/ccminer/	0.000351787
1286	Tristar Coin	https://coinmarketcap.com/currencies/tristar-coin/	0.000223197
1287	DIBCOIN	https://coinmarketcap.com/currencies/dibcoin/	0.000218986
1288	Ebittree Coin	https://coinmarketcap.com/currencies/ebittree-coin/	0.000595192
1289	Huobi Token	https://coinmarketcap.com/currencies/huobi-token/	1.65956
1290	ATMCoin	https://coinmarketcap.com/currencies/atmcoin/	7.64823
1291	EDUCare	https://coinmarketcap.com/currencies/educare/	0.0870281
1292	Elastos	https://coinmarketcap.com/currencies/elastos/	30.1849
1293	Wanchain	https://coinmarketcap.com/currencies/wanchain/	3.11951
1294	TopChain	https://coinmarketcap.com/currencies/topchain/	0.0211855
1295	OceanChain	https://coinmarketcap.com/currencies/oceanchain/	0.00404231
1296	Dragon Coins	https://coinmarketcap.com/currencies/dragon-coins/	1.265
1297	ChatCoin	https://coinmarketcap.com/currencies/chatcoin/	0.0843943
1298	WaykiChain	https://coinmarketcap.com/currencies/waykichain/	0.403168
1299	AI Doctor	https://coinmarketcap.com/currencies/aidoc/	0.0344512
1300	OFCOIN	https://coinmarketcap.com/currencies/ofcoin/	0.00106791
1301	StarChain	https://coinmarketcap.com/currencies/starchain/	0.0242711
1302	LightChain	https://coinmarketcap.com/currencies/lightchain/	0.00121131
1303	Noah Coin	https://coinmarketcap.com/currencies/noah-coin/	0.0101183
1304	BitcoinX	https://coinmarketcap.com/currencies/bitcoinx/	0.00431245
1305	Show	https://coinmarketcap.com/currencies/show/	0.0021238
1306	Molecular Future	https://coinmarketcap.com/currencies/molecular-future/	0.193148
1307	NANJCOIN	https://coinmarketcap.com/currencies/nanjcoin/	0.00081839
1308	Electronic PK...	https://coinmarketcap.com/currencies/electronic-pk-chain/	0.0409543
1309	AWARE	https://coinmarketcap.com/currencies/aware/	0.0127499
1310	Fargocoin	https://coinmarketcap.com/currencies/fargocoin/	8.66348
1311	Acute Angle C...	https://coinmarketcap.com/currencies/acute-angle-cloud/	0.0775564
1312	W3Coin	https://coinmarketcap.com/currencies/w3coin/	0.00040296
1313	Tokenomy	https://coinmarketcap.com/currencies/tokenomy/	0.26768
1314	Octoin Coin	https://coinmarketcap.com/currencies/octoin-coin/	4.73149
1315	RealChain	https://coinmarketcap.com/currencies/realchain/	0.0291047
1316	Super Bitcoin	https://coinmarketcap.com/currencies/super-bitcoin/	7.66822
1317	Content and A...	https://coinmarketcap.com/currencies/content-and-ad-network/	0.0178181
1318	Kcash	https://coinmarketcap.com/currencies/kcash/	0.0764982
1319	Pundi X	https://coinmarketcap.com/currencies/pundi-x/	0.000947451
1320	SelfSell	https://coinmarketcap.com/currencies/selfsell/	0.0402041
1321	IP Exchange	https://coinmarketcap.com/currencies/ip-exchange/	0.00555997
1322	ugChain	https://coinmarketcap.com/currencies/ugchain/	0.034683
1323	Lightning Bit...	https://coinmarketcap.com/currencies/lightning-bitcoin/	74.4286
1324	BitStation	https://coinmarketcap.com/currencies/bitstation/	0.00591245
1325	Maggie	https://coinmarketcap.com/currencies/maggie/	0.010939
1326	AMLT Token	https://coinmarketcap.com/currencies/amlt/	0.0637246
1327	Gladius Token	https://coinmarketcap.com/currencies/gladius-token/	0.434817
1328	Tezos (Pre-La...	https://coinmarketcap.com/currencies/tezos/	2.8781
1329	COMSA [ETH]	https://coinmarketcap.com/currencies/comsa-eth/	0.619785
1330	FairGame	https://coinmarketcap.com/currencies/fairgame/	0.0158237
1331	Gems	https://coinmarketcap.com/currencies/gems-protocol/	0.0110639
1332	WINCOIN	https://coinmarketcap.com/currencies/win-coin/	0.803807
1333	UG Token	https://coinmarketcap.com/currencies/ug-token/	0.388439
1334	United Bitcoin	https://coinmarketcap.com/currencies/united-bitcoin/	13.8615
1335	Bitcoin Private	https://coinmarketcap.com/currencies/bitcoin-private/	25.7896
1336	iQuant	https://coinmarketcap.com/currencies/iquant/	0.0665835
1337	EA Coin	https://coinmarketcap.com/currencies/ea-coin/	0.0334794
1338	Qube	https://coinmarketcap.com/currencies/qube/	0.0298008
1339	MOAC	https://coinmarketcap.com/currencies/moac/	11.2619
1340	Banca	https://coinmarketcap.com/currencies/banca/	0.000383837
1341	MktCoin	https://coinmarketcap.com/currencies/mktcoin/	0.0449219
1342	COMSA [XEM]	https://coinmarketcap.com/currencies/comsa-xem/	0.610568
1343	WETH	https://coinmarketcap.com/currencies/weth/	454.478
1344	StockChain	https://coinmarketcap.com/currencies/stockchain/	0.0265158
1345	Neurotoken	https://coinmarketcap.com/currencies/neurotoken/	0.250661
1346	ValueChain	https://coinmarketcap.com/currencies/valuechain/	0.0355729
1347	Infinity Econ...	https://coinmarketcap.com/currencies/infinity-economics/	0.0138823
1348	CFun	https://coinmarketcap.com/currencies/cfun/	0.00520968
1349	Dropil	https://coinmarketcap.com/currencies/dropil/	0.00578309
1350	TerraNova	https://coinmarketcap.com/currencies/terranova/	12.9997
1351	Animation Vis...	https://coinmarketcap.com/currencies/animation-vision-cash/	0.00719704
1352	Centrality	https://coinmarketcap.com/currencies/centrality/	0.219924
1353	Aidos Kuneen	https://coinmarketcap.com/currencies/aidos-kuneen/	18.5626
1354	BitSoar	https://coinmarketcap.com/currencies/bitsoar/	0.118964
1355	Filecoin [Fut...	https://coinmarketcap.com/currencies/filecoin/	7.06912
1356	Jingtum Tech	https://coinmarketcap.com/currencies/jingtum-tech/	0.00709488
1357	Hyper Pay	https://coinmarketcap.com/currencies/hyper-pay/	0.0252914
1358	SegWit2x	https://coinmarketcap.com/currencies/segwit2x/	1.15353
1359	Etherecash	https://coinmarketcap.com/currencies/etherecash/	0.412082
1360	Litecoin Cash	https://coinmarketcap.com/currencies/litecoin-cash/	0.15897
1361	PressOne	https://coinmarketcap.com/currencies/pressone/	0.17655
1362	PACcoin	https://coinmarketcap.com/currencies/paccoin/	0.00543891
1363	BitRent	https://coinmarketcap.com/currencies/bitrent/	0.0314962
1364	MergeCoin	https://coinmarketcap.com/currencies/mergecoin/	0.183989
1365	Sphre AIR	https://coinmarketcap.com/currencies/sphre-air/	0.156049
1366	IPChain	https://coinmarketcap.com/currencies/ipchain/	0.561341
1367	Numus	https://coinmarketcap.com/currencies/numus/	0.918952
1368	MedicCoin	https://coinmarketcap.com/currencies/mediccoin/	0.0288303
1369	HireMatch	https://coinmarketcap.com/currencies/hirematch/	0.0236744
1370	Titanium BAR	https://coinmarketcap.com/currencies/titanium-bar/	0.213951
1371	BigONE Token	https://coinmarketcap.com/currencies/bigone-token/	1.39302
1372	StrikeBitClub	https://coinmarketcap.com/currencies/strikebitclub/	0.00662152
1373	Stipend	https://coinmarketcap.com/currencies/stipend/	0.758945
1374	Mixin	https://coinmarketcap.com/currencies/mixin/	404.314
1375	InvestDigital	https://coinmarketcap.com/currencies/investdigital/	0.0329987
1376	Bee Token	https://coinmarketcap.com/currencies/bee-token/	0.0756461
1377	Read	https://coinmarketcap.com/currencies/read/	0.0154244
1378	EtherDelta Token	https://coinmarketcap.com/currencies/etherdelta-token/	0.0130843
1379	BT2 [CST]	https://coinmarketcap.com/currencies/bt2-cst/	51.4327
1380	Candy	https://coinmarketcap.com/currencies/candy/	0.000204442
1381	Lendroid Supp...	https://coinmarketcap.com/currencies/lendroid-support-token/	0.00955819
1382	UnlimitedIP	https://coinmarketcap.com/currencies/unlimitedip/	0.0205733
1383	BnkToTheFuture	https://coinmarketcap.com/currencies/bnktothefuture/	0.0655232
1384	TechShares	https://coinmarketcap.com/currencies/techshares/	0.426112
1385	TimesCoin	https://coinmarketcap.com/currencies/timescoin/	0.699351
1386	ENTCash	https://coinmarketcap.com/currencies/entcash/	0.0178987
1387	Titanium Bloc...	https://coinmarketcap.com/currencies/titanium-blockchain/	0.00775502
1388	MSD	https://coinmarketcap.com/currencies/msd/	0.0175107
1389	Peculium	https://coinmarketcap.com/currencies/peculium/	0.00231606
1390	HalalChain	https://coinmarketcap.com/currencies/halalchain/	0.0938738
1391	DATx	https://coinmarketcap.com/currencies/datx/	0.0161475
1392	Swisscoin	https://coinmarketcap.com/currencies/swisscoin/	0.000743991
1393	BlockCDN	https://coinmarketcap.com/currencies/blockcdn/	0.0150103
1394	ZenGold	https://coinmarketcap.com/currencies/zengold/	0.0185879
1395	HOQU	https://coinmarketcap.com/currencies/hoqu/	0.0409668
1396	Maverick Chain	https://coinmarketcap.com/currencies/maverick-chain/	0.0367025
1397	Nitro	https://coinmarketcap.com/currencies/nitro/	0.0896417
1398	StarterCoin	https://coinmarketcap.com/currencies/startercoin/	0.016302
1399	Fluz Fluz	https://coinmarketcap.com/currencies/fluz-fluz/	0.0654213
1400	Bitcoin God	https://coinmarketcap.com/currencies/bitcoin-god/	17.8805
1401	Vulcano	https://coinmarketcap.com/currencies/vulcano/	0.00184572
1402	Signal Token	https://coinmarketcap.com/currencies/signal-token/	0.01535
1403	CryptopiaFeeS...	https://coinmarketcap.com/currencies/cryptopiafeeshares/	1167.05
1404	Nexxus	https://coinmarketcap.com/currencies/nexxus/	0.0445683
1405	NaPoleonX	https://coinmarketcap.com/currencies/napoleonx/	0.220343
1406	IDEX Membership	https://coinmarketcap.com/currencies/idex-membership/	1636.02
1407	BlitzPredict	https://coinmarketcap.com/currencies/blitzpredict/	0.0049434
1408	GameChain System	https://coinmarketcap.com/currencies/gamechain/	0.00698007
1409	EDRCoin	https://coinmarketcap.com/currencies/edrcoin/	0.0904622
1410	Harvest Maste...	https://coinmarketcap.com/currencies/harvest-masternode-coin/	0.223272
1411	EncryptoTel [...	https://coinmarketcap.com/currencies/encryptotel-eth/	0.0487706
1412	Escroco	https://coinmarketcap.com/currencies/escoro/	0.104828
1413	Golos Gold	https://coinmarketcap.com/currencies/golos-gold/	0.0463668
1414	BlazerCoin	https://coinmarketcap.com/currencies/blazercoin/	0.00313575
1415	WA Space	https://coinmarketcap.com/currencies/wa-space/	0.00669592
1416	SwapToken	https://coinmarketcap.com/currencies/swaptoken/	1.12e-06
1417	CORION	https://coinmarketcap.com/currencies/corion/	0.402499
1418	Cashme	https://coinmarketcap.com/currencies/cashme/	0.000297596
1419	United Trader...	https://coinmarketcap.com/currencies/uttoken/	0.29968
1420	T-coin	https://coinmarketcap.com/currencies/t-coin/	7.43991e-05
1421	Macro	https://coinmarketcap.com/currencies/macro1/	0.476405
1422	Animecoin	https://coinmarketcap.com/currencies/animecoin/	0.00334796
1423	Sand Coin	https://coinmarketcap.com/currencies/sand-coin/	0.593466
1424	Superior Coin	https://coinmarketcap.com/currencies/superior-coin/	0.00204639
1425	DavorCoin	https://coinmarketcap.com/currencies/davorcoin/	0.0150286
1426	President Joh...	https://coinmarketcap.com/currencies/president-johnson/	0.125586
1427	SHACoin	https://coinmarketcap.com/currencies/shacoin/	0.000743991
1428	Alphabit	https://coinmarketcap.com/currencies/alphabitcoinfund/	36.1015
1429	Cloud	https://coinmarketcap.com/currencies/cloud/	0.0403609
1430	President Trump	https://coinmarketcap.com/currencies/president-trump/	0.0144322
1431	Blocklancer	https://coinmarketcap.com/currencies/blocklancer/	0.0149796
1432	Internet of T...	https://coinmarketcap.com/currencies/internet-of-things/	978.686
1433	First Bitcoin...	https://coinmarketcap.com/currencies/first-bitcoin-capital/	0.185179
1434	TeslaCoilCoin	https://coinmarketcap.com/currencies/teslacoilcoin/	0.981919
1435	Ethereum Lite	https://coinmarketcap.com/currencies/ethereum-lite/	0.325049
1436	Storjcoin X	https://coinmarketcap.com/currencies/storjcoin-x/	0.783462
1437	OX Fina	https://coinmarketcap.com/currencies/ox-fina/	0.000371995
1438	Cyder	https://coinmarketcap.com/currencies/cyder/	0.00349676
1439	Akuya Coin	https://coinmarketcap.com/currencies/akuya-coin/	0.00379435
1440	BitSerial	https://coinmarketcap.com/currencies/bitserial/	0.00668657
1441	Topaz Coin	https://coinmarketcap.com/currencies/topaz/	0.298787
1442	Sakuracoin	https://coinmarketcap.com/currencies/sakuracoin/	0.00185998
1443	First Bitcoin	https://coinmarketcap.com/currencies/first-bitcoin/	0.0281972
1444	Sparks	https://coinmarketcap.com/currencies/sparks/	0.0450954
1445	GAY Money	https://coinmarketcap.com/currencies/gaycoin/	0.0199389
1446	GoldMaxCoin	https://coinmarketcap.com/currencies/goldmaxcoin/	0.000647659
1447	BTCMoon	https://coinmarketcap.com/currencies/btcmoon/	0.01138
1448	DynamicCoin	https://coinmarketcap.com/currencies/dynamiccoin/	0.0013709
1449	Royalties	https://coinmarketcap.com/currencies/royalties/	7.24646e-05
1450	NamoCoin	https://coinmarketcap.com/currencies/namocoin/	0.000223197
1451	GOLD Reward T...	https://coinmarketcap.com/currencies/gold-reward-token/	0.0207596
1452	NEO GOLD	https://coinmarketcap.com/currencies/neo-gold/	0.0024489
1453	Zilbercoin	https://coinmarketcap.com/currencies/zilbercoin/	0.00955555
1454	FlappyCoin	https://coinmarketcap.com/currencies/flappycoin/	3.36112e-05
1455	Fazzcoin	https://coinmarketcap.com/currencies/fazzcoin/	0.00834016
1456	Birds	https://coinmarketcap.com/currencies/birds/	0.000223197
1457	Francs	https://coinmarketcap.com/currencies/francs/	0.0242919
1458	Pabyosi Coin ...	https://coinmarketcap.com/currencies/pabyosi-coin-special/	0.0538581
1459	VPNCoin	https://coinmarketcap.com/currencies/vpncoin/	0.00386875
1460	Protean	https://coinmarketcap.com/currencies/protean/	2.14142e-05
1461	CryptCoin	https://coinmarketcap.com/currencies/cryptcoin/	0.0669592
1462	BatCoin	https://coinmarketcap.com/currencies/batcoin/	7.43991e-05
1463	ClubCoin	https://coinmarketcap.com/currencies/clubcoin/	1.26464
1464	Slothcoin	https://coinmarketcap.com/currencies/slothcoin/	2.8481e-06
1465	WeAreSatoshi	https://coinmarketcap.com/currencies/wearesatoshi/	0.00305036
1466	AvatarCoin	https://coinmarketcap.com/currencies/avatarcoin/	0.152667
1467	Wi Coin	https://coinmarketcap.com/currencies/wi-coin/	0.00111292
1468	Levocoin	https://coinmarketcap.com/currencies/levocoin/	0.00111599
1469	GrandCoin	https://coinmarketcap.com/currencies/grandcoin/	0.000223197
1470	MarxCoin	https://coinmarketcap.com/currencies/marxcoin/	0.00128734
1471	Smoke	https://coinmarketcap.com/currencies/smoke/	0.047437
1472	STEX	https://coinmarketcap.com/currencies/stex/	0.867195
1473	Fonziecoin	https://coinmarketcap.com/currencies/fonziecoin/	0.00104159
1474	Huncoin	https://coinmarketcap.com/currencies/huncoin/	0.00111599
1475	BITFID	https://coinmarketcap.com/currencies/bitfid/	0.0293876
1476	KlondikeCoin	https://coinmarketcap.com/currencies/klondikecoin/	0.0151774
1477	FAPcoin	https://coinmarketcap.com/currencies/fapcoin/	0.000743991
1478	SJWCoin	https://coinmarketcap.com/currencies/sjwcoin/	0.000520793
1479	UR	https://coinmarketcap.com/currencies/ur/	0.00119038
1480	MobileCash	https://coinmarketcap.com/currencies/mobilecash/	0.000371995
1481	Safe Trade Coin	https://coinmarketcap.com/currencies/safe-trade-coin/	0.000297596
1482	SISA	https://coinmarketcap.com/currencies/sisa/	0.00717893
1483	Indicoin	https://coinmarketcap.com/currencies/indicoin/	0.00967188
1484	LinkedCoin	https://coinmarketcap.com/currencies/linkedcoin/	0.000223197
1485	India Coin	https://coinmarketcap.com/currencies/india-coin/	0.000297596
1486	Donationcoin	https://coinmarketcap.com/currencies/donationcoin/	0.000892789
1487	Tellurion	https://coinmarketcap.com/currencies/tellurion/	0.000419298
1488	RabbitCoin	https://coinmarketcap.com/currencies/rabbitcoin/	2.07654e-05
1489	High Gain	https://coinmarketcap.com/currencies/high-gain/	0.000297596
1490	Bastonet	https://coinmarketcap.com/currencies/bastonet/	0.000669592
1491	Quotient	https://coinmarketcap.com/currencies/quotient/	0.00364555
1492	RichCoin	https://coinmarketcap.com/currencies/richcoin/	0.00736551
1493	Regacoin	https://coinmarketcap.com/currencies/regacoin/	0.00163678
1494	Sharkcoin	https://coinmarketcap.com/currencies/sharkcoin/	0.00214407
1495	Qora	https://coinmarketcap.com/currencies/qora/	0.194777
1496	Dashs	https://coinmarketcap.com/currencies/dashs/	0.0420355
1497	Aces	https://coinmarketcap.com/currencies/aces/	0.000309141
1498	PlexCoin	https://coinmarketcap.com/currencies/plexcoin/	0.00964463
1499	Wink	https://coinmarketcap.com/currencies/wink/	0.000611941
1500	Cubits	https://coinmarketcap.com/currencies/cubits/	0.00297596
1501	Natcoin	https://coinmarketcap.com/currencies/natcoin/	0.0117551
1502	NumusCash	https://coinmarketcap.com/currencies/numuscash/	0.000148798
1503	TopCoin	https://coinmarketcap.com/currencies/topcoin/	0.00148798
1504	Primulon	https://coinmarketcap.com/currencies/primulon/	0.000223197
1505	Minex	https://coinmarketcap.com/currencies/minex/	0.011642
1506	BestChain	https://coinmarketcap.com/currencies/bestchain/	0.00364555
1507	Musiconomi	https://coinmarketcap.com/currencies/musiconomi/	0.0313964
1508	CoffeeCoin	https://coinmarketcap.com/currencies/coffeecoin/	0.00156238
1509	HODL Bucks	https://coinmarketcap.com/currencies/hodl-bucks/	0.0498474
1510	ACChain	https://coinmarketcap.com/currencies/acchain/	0.513354
1511	ZSEcoin	https://coinmarketcap.com/currencies/zsecoin/	0.0159958
1512	ShellCoin	https://coinmarketcap.com/currencies/shellcoin/	0.0313964
1513	DarkLisk	https://coinmarketcap.com/currencies/darklisk/	0.00081839
1514	Granite	https://coinmarketcap.com/currencies/granitecoin/	0.00833269
1515	SuperNET	https://coinmarketcap.com/currencies/supernet-unity/	87.8872
1516	Bubble	https://coinmarketcap.com/currencies/bubble/	0.0104159
1517	netBit	https://coinmarketcap.com/currencies/netbit/	0.00872882
1518	GameLeagueCoin	https://coinmarketcap.com/currencies/gameleaguecoin/	0.0100439
1519	BetaCoin	https://coinmarketcap.com/currencies/betacoin/	0.00178558
1520	InvisibleCoin	https://coinmarketcap.com/currencies/invisiblecoin/	0.354437
1521	eGold	https://coinmarketcap.com/currencies/egold/	0.00879042
1522	SafeCoin	https://coinmarketcap.com/currencies/safecoin/	7.43991e-05
1523	Magnetcoin	https://coinmarketcap.com/currencies/magnetcoin/	0.16219
1524	UniversalRoya...	https://coinmarketcap.com/currencies/universalroyalcoin/	0.000443737
1525	Operand	https://coinmarketcap.com/currencies/operand/	0.00111599
1526	Lazaruscoin	https://coinmarketcap.com/currencies/lazaruscoin/	0.00104159
1527	Cheapcoin	https://coinmarketcap.com/currencies/cheapcoin/	0.000669592
1528	FrankyWillCoin	https://coinmarketcap.com/currencies/frankywillcoin/	0.00223197
1529	FutCoin	https://coinmarketcap.com/currencies/futcoin/	0.00148798
1530	Bitbase	https://coinmarketcap.com/currencies/bitbase/	0.000595192
1531	RHFCoin	https://coinmarketcap.com/currencies/rhfcoin/	0.000520793
1532	Compcoin	https://coinmarketcap.com/currencies/compcoin/	7.41052
1533	UGAIN	https://coinmarketcap.com/currencies/ugain/	0.00282716
1534	Cycling Coin	https://coinmarketcap.com/currencies/cycling-coin/	0.00133918
1535	DeltaCredits	https://coinmarketcap.com/currencies/deltacredits/	0.169183
1536	UNCoin	https://coinmarketcap.com/currencies/uncoin/	7.43991e-05
1537	The Vegan Ini...	https://coinmarketcap.com/currencies/the-vegan-initiative/	0.000595192
1538	LAthaan	https://coinmarketcap.com/currencies/lathaan/	0.000743991
1539	Pirate Blocks	https://coinmarketcap.com/currencies/pirate-blocks/	0.00225637
1540	Digital Bulli...	https://coinmarketcap.com/currencies/digital-bullion-gold/	0.00141358
1541	RoyalCoin	https://coinmarketcap.com/currencies/royalcoin/	0.00416635
1542	Voyacoin	https://coinmarketcap.com/currencies/voyacoin/	1.01785
1543	Avoncoin	https://coinmarketcap.com/currencies/avoncoin/	0.000297596
1544	AlpaCoin	https://coinmarketcap.com/currencies/alpacoin/	0.00327356
1545	LandCoin	https://coinmarketcap.com/currencies/landcoin/	0.00252957
1546	PrismChain	https://coinmarketcap.com/currencies/prismchain/	0.00126478
1547	Axiom	https://coinmarketcap.com/currencies/axiom/	0.0107135
1548	Aseancoin	https://coinmarketcap.com/currencies/aseancoin/	0.00371995
1549	TodayCoin	https://coinmarketcap.com/currencies/todaycoin/	0.000595192
1550	Halloween Coin	https://coinmarketcap.com/currencies/halloween-coin/	0.000294705
1551	TheCreed	https://coinmarketcap.com/currencies/thecreed/	0.000371995
1552	Hyper	https://coinmarketcap.com/currencies/hyper/	0.0296108
1553	Xaucoin	https://coinmarketcap.com/currencies/xaucoin/	0.0447138
1554	Moneta	https://coinmarketcap.com/currencies/moneta2/	0.000371995
1555	RubleBit	https://coinmarketcap.com/currencies/rublebit/	0.00409195
1556	Runners	https://coinmarketcap.com/currencies/runners/	0.000223197
1557	Opescoin	https://coinmarketcap.com/currencies/opescoin/	0.00193438
1558	SportsCoin	https://coinmarketcap.com/currencies/sportscoin/	0.00141358
1559	LePen	https://coinmarketcap.com/currencies/lepen/	0.000148798
1560	EggCoin	https://coinmarketcap.com/currencies/eggcoin/	0.0232125
1561	Dubstep	https://coinmarketcap.com/currencies/dubstep/	0.00178558
1562	X2	https://coinmarketcap.com/currencies/x2/	0.000223197
1563	International...	https://coinmarketcap.com/currencies/international-diamond/	0.00193438
1564	MMXVI	https://coinmarketcap.com/currencies/mmxvi/	0.00364555
1565	CyberCoin	https://coinmarketcap.com/currencies/cybercoin/	0.000148798
1566	Psilocybin	https://coinmarketcap.com/currencies/psilocybin/	0.0352652
1567	PokeCoin	https://coinmarketcap.com/currencies/pokecoin/	7.43991e-05
1568	TrickyCoin	https://coinmarketcap.com/currencies/trickycoin/	0.00840709
1569	Karmacoin	https://coinmarketcap.com/currencies/karmacoin/	7.43991e-05
1570	PayPeer	https://coinmarketcap.com/currencies/paypeer/	7.43991e-05
1571	Happy Creator...	https://coinmarketcap.com/currencies/happy-creator-coin/	7.43991e-05
1572	Rcoin	https://coinmarketcap.com/currencies/rcoin/	7.43991e-05
1573	KashhCoin	https://coinmarketcap.com/currencies/kashhcoin/	7.43991e-05
1574	Bitok	https://coinmarketcap.com/currencies/bitok/	7.43991e-05
1575	Tattoocoin (L...	https://coinmarketcap.com/currencies/tattoocoin-limited/	0.748094
1576	Antimatter	https://coinmarketcap.com/currencies/antimatter/	0.000150261
1577	TurboCoin	https://coinmarketcap.com/currencies/turbocoin/	7.63746e-05
1578	XTD Coin	https://coinmarketcap.com/currencies/xtd-coin/	7.53722e-05
1579	SIGMAcoin	https://coinmarketcap.com/currencies/sigmacoin/	0.0175645
1580	LLToken	https://coinmarketcap.com/currencies/lltoken/	?
1581	Dutch Coin	https://coinmarketcap.com/currencies/dutch-coin/	0.000676126
1582	ANRYZE	https://coinmarketcap.com/currencies/anryze/	0.00631631
1583	SpherePay	https://coinmarketcap.com/currencies/spherepay/	0.00223544
1584	Farstcoin	https://coinmarketcap.com/currencies/farstcoin/	?
1585	Monero Gold	https://coinmarketcap.com/currencies/monero-gold/	0.000185086
1586	Infinitecoin	https://coinmarketcap.com/currencies/infinitecoin/	9.87095e-05
1587	BitAlphaCoin	https://coinmarketcap.com/currencies/bitalphacoin/	0.0041309
1588	OCOW	https://coinmarketcap.com/currencies/ocow/	1.66381e-05
1589	Omicron	https://coinmarketcap.com/currencies/omicron/	0.218611
1590	TeamUp	https://coinmarketcap.com/currencies/teamup/	0.000241516
1591	Wowcoin	https://coinmarketcap.com/currencies/wowcoin/	3.01696e-05
1592	PinkDog	https://coinmarketcap.com/currencies/pinkdog/	7.91442e-05
1593	SnakeEyes	https://coinmarketcap.com/currencies/snakeeyes/	0.00100531
1594	InfChain	https://coinmarketcap.com/currencies/infchain/	0.0088001
\.


--
-- Name: coin_id_seq; Type: SEQUENCE SET; Schema: public; Owner: postgres
--

SELECT pg_catalog.setval('public.coin_id_seq', 1594, true);


--
-- Name: coin coin_pkey; Type: CONSTRAINT; Schema: public; Owner: postgres
--

ALTER TABLE ONLY public.coin
    ADD CONSTRAINT coin_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

