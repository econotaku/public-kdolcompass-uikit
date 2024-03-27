//
//  Constants.swift
//  KdolCompass
//
//  Created by ECONOTAKU on 3/13/24.
//

import Foundation


struct Constants {
  
  static var km: Bool = true
  
  //HYBE
  static let bts = StarLocation(
    c: "HYBE Ent", n: "BTS", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/bts.bighitofficial/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let txt = StarLocation(
    c: "HYBE Ent", n: "TOMORROW X TOGETHER", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/txt_bighit/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let enhypen = StarLocation(
    c: "HYBE Ent", n: "ENHYPEN", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/enhypen/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let leSserafim = StarLocation(
    c: "HYBE Ent", n: "LE SSERAFIM", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/le_sserafim/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let newJeans = StarLocation(
    c: "HYBE Ent", n: "NewJeans", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/newjeans_official/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let iLLIT = StarLocation(
    c: "HYBE Ent", n: "ILLIT", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/illit_official/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")

  
  //PLEDIS
  static let seventeen
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "SEVENTEEN", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/saythename_17/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let promise9
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "PROMIS_9", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/officialfromis_9/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let nana
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "NANA", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/jin_a_nana/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let baekho
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "BAEKHO", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/this_is_baekho/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let hwangMinHyun
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "HWANG MIN HYUN", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/optimushwang/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let tws
  = StarLocation(c: "PLEDIS Ent (HYBE LABELS)", n: "TWS", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/tws_pledis/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  
  
  //KOZ
  static let zico
  = StarLocation(c: "KOZ Ent (HYBE LABELS)", n: "ZICO", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/woozico0914/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let dvwn
  = StarLocation(c: "KOZ Ent (HYBE LABELS)", n: "Dvwn", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/around_dvwn/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  static let boyNextDoor
  = StarLocation(c: "KOZ Ent (HYBE LABELS)", n: "BOYNEXTDOOR", lon: 126.96417117436083, lat: 37.524400684309114, ins: "https://www.instagram.com/boynextdoor_official/", a: "42, Hangang-daero, Yongsan-gu, Seoul, Republic of Korea")
  
  
  //JYP
  static let jyPark
  = StarLocation(c: "JYP Ent", n: "J.Y.Park", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/asiansoul_jyp/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let twoPm
  = StarLocation(c: "JYP Ent", n: "2PM", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/real_2pmstagram/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let day6
  = StarLocation(c: "JYP Ent", n: "DAY6", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/DAY6kilogram/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let twice
  = StarLocation(c: "JYP Ent", n: "TWICE", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/twicetagram/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let strayKids
  = StarLocation(c: "JYP Ent", n: "Stray Kids", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/realstraykids/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let itzy
  = StarLocation(c: "JYP Ent", n: "ITZY", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/itzy.all.in.us/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let niziu
  = StarLocation(c: "JYP Ent", n: "NiziU", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/niziu_info_official/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let xdianry
  = StarLocation(c: "JYP Ent", n: "Xdinary Heroes", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/xdinaryheroes_official/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let nmixx
  = StarLocation(c: "JYP Ent", n: "NMIXX", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/nmixx_official/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  static let vcha
  = StarLocation(c: "JYP Ent", n: "VCHA", lon: 127.1291548196082, lat: 37.52407853441298, ins: "https://www.instagram.com/Official_VCHA/", a: "205, Gangdong-daero, Gangdong-gu, Seoul, Republic of Korea")
  
  
  
  //SM
  static let nct
  = StarLocation(c: "SM Ent", n: "NCT", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/nct/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let exo
  = StarLocation(c: "SM Ent", n: "EXO", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/weareone.exo/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let aespa
  = StarLocation(c: "SM Ent", n: "aespa", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/aespa_official/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let shinee
  = StarLocation(c: "SM Ent", n: "SHINee", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/shinee/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let superJunior
  = StarLocation(c: "SM Ent", n: "Super Junior", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/superjunior/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let redVelvet
  = StarLocation(c: "SM Ent", n: "Red Velvet", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/redvelvet.smtown/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let tvxq
  = StarLocation(c: "SM Ent", n: "TVXQ", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/tvxq.official/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let taeyeon
  = StarLocation(c: "SM Ent", n: "Tea Yeon", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/Taeyeon_ss/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let hyoyeon
  = StarLocation(c: "SM Ent", n: "Hyo Yeon", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/hyoyeon_x_x/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let boa
  = StarLocation(c: "SM Ent", n: "BoA", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/boakwon/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let yoona
  = StarLocation(c: "SM Ent", n: "Yoon A", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/yoona__lim/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let yuri
  = StarLocation(c: "SM Ent", n: "Yu Ri", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/yulyulk/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let riize
  = StarLocation(c: "SM Ent", n: "RIIZE", lon: 127.0444369019288, lat: 37.544142737388064, ins: "https://www.instagram.com/riize_official/", a: "648, Samseong-ro, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //YG
  static let blackpink
  = StarLocation(c: "YG Ent", n: "BLACKPINK", lon: 126.90813452348375, lat: 37.548769451698504, ins: "https://www.instagram.com/blackpinkofficial/", a: "19, Huiujeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let winner
  = StarLocation(c: "YG Ent", n: "WINNER", lon: 126.90813452348375, lat: 37.548769451698504, ins: "https://www.instagram.com/winnercity/", a: "19, Huiujeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let treasure
  = StarLocation(c: "YG Ent", n: "TREASURE", lon: 126.90813452348375, lat: 37.548769451698504, ins: "https://www.instagram.com/yg_treasure_official/", a: "19, Huiujeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let akmu
  = StarLocation(c: "YG Ent", n: "AKMU", lon: 126.90813452348375, lat: 37.548769451698504, ins: "https://www.instagram.com/akmu_suhyun/", a: "19, Huiujeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let babyMosnter
  = StarLocation(c: "YG Ent", n: "BABYMONSTER", lon: 126.90813452348375, lat: 37.548769451698504, ins: "https://www.instagram.com/babymonster_ygofficial/", a: "19, Huiujeong-ro, Mapo-gu, Seoul, Republic of Korea")
  
  
  //STARSHIP
  static let monstaX
  = StarLocation(c: "STARSHIP Ent", n: "MONSTA X", lon: 127.04889628761607, lat: 37.52273332058607, ins: "https://www.instagram.com/official_monsta_x/", a: "4-5, Samseong-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let wjsn
  = StarLocation(c: "STARSHIP Ent", n: "WJSN", lon: 127.04889628761607, lat: 37.52273332058607, ins: "https://www.instagram.com/wjsn_cosmic/", a: "4-5, Samseong-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let jeongSewoon
  = StarLocation(c: "STARSHIP Ent", n: "Jeong Sewoon", lon: 127.04889628761607, lat: 37.52273332058607, ins: "https://www.instagram.com/sewoon_j/", a: "4-5, Samseong-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let cravity
  = StarLocation(c: "STARSHIP Ent", n: "CRAVITY", lon: 127.04889628761607, lat: 37.52273332058607, ins: "https://www.instagram.com/cravity_official/", a: "4-5, Samseong-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let ive
  = StarLocation(c: "STARSHIP Ent", n: "IVE", lon: 127.04889628761607, lat: 37.52273332058607, ins: "https://www.instagram.com/IVEstarship/", a: "4-5, Samseong-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //WOOllim
  static let goldenChild
  = StarLocation(c: "WOOllim Ent", n: "Golden Child", lon: 126.9112953523592, lat: 37.564395320790645, ins: "https://www.instagram.com/official_gncd11/", a: "14, World Cup buk-ro 23-gil, Mapo-gu, Seoul, Republic of Korea")
  static let rocketPunch
  = StarLocation(c: "WOOllim Ent", n: "Rocket Punch", lon: 126.9112953523592, lat: 37.564395320790645, ins: "https://www.instagram.com/official_rcpc_/", a: "14, World Cup buk-ro 23-gil, Mapo-gu, Seoul, Republic of Korea")
  static let drippin
  = StarLocation(c: "WOOllim Ent", n: "DRIPPIN", lon: 126.9112953523592, lat: 37.564395320790645, ins: "https://www.instagram.com/wearedrippin/", a: "14, World Cup buk-ro 23-gil, Mapo-gu, Seoul, Republic of Korea")
  static let kwonEunBi
  = StarLocation(c: "WOOllim Ent", n: "KWON EUN BI", lon: 126.9112953523592, lat: 37.564395320790645, ins: "https://www.instagram.com/silver_rain.__/", a: "14, World Cup buk-ro 23-gil, Mapo-gu, Seoul, Republic of Korea")
  
  
  //fantagio
  static let astro
  = StarLocation(c: "fantagio Ent", n: "ASTRO", lon: 127.04329805226679, lat: 37.49768724669967, ins: "https://www.instagram.com/officialASTRO/", a: "FANTAGIO BUILDING, 248 Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let wekiMeki
  = StarLocation(c: "fantagio Ent", n: "Weki Meki", lon: 127.04329805226679, lat: 37.49768724669967, ins: "https://www.instagram.com/weki_meki/", a: "FANTAGIO BUILDING, 248 Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let lun8
  = StarLocation(c: "fantagio Ent", n: "LUN8", lon: 127.04329805226679, lat: 37.49768724669967, ins: "https://www.instagram.com/lun8_official/", a: "FANTAGIO BUILDING, 248 Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //wm
  static let ohMyGirl
  = StarLocation(c: "wm Ent", n: "OH MY GIRL", lon: 126.9088586360442, lat: 37.556619044531296, ins: "https://www.instagram.com/wm_ohmygirl/", a: "8, World Cup-ro 15-gil, Mapo-gu, Seoul, Republic of Korea")
  static let b1a4
  = StarLocation(c: "wm Ent", n: "B1A4", lon: 126.9088586360442, lat: 37.556619044531296, ins: "https://www.instagram.com/b1a4ganatanatda/", a: "8, World Cup-ro 15-gil, Mapo-gu, Seoul, Republic of Korea")
  static let onf
  = StarLocation(c: "wm Ent", n: "ONF", lon: 126.9088586360442, lat: 37.556619044531296, ins: "https://www.instagram.com/wm_onoff/", a: "8, World Cup-ro 15-gil, Mapo-gu, Seoul, Republic of Korea")
  static let leeChaeYeon
  = StarLocation(c: "wm Ent", n: "LEE CHAE YEON", lon: 126.9088586360442, lat: 37.556619044531296, ins: "https://www.instagram.com/chaestival_/", a: "8, World Cup-ro 15-gil, Mapo-gu, Seoul, Republic of Korea")
  
  //edam
  static let iu
  = StarLocation(c: "edam Ent", n: "IU", lon: 127.06367309295815, lat: 37.51045237114724, ins: "https://www.instagram.com/dlwlrma/", a: "17, Teheran-ro 103-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //IST Entertainment
  static let apink
  = StarLocation(c: "IST Entertainment", n: "Apink", lon: 127.03444513975015, lat: 37.5276498196353, ins: "https://www.instagram.com/official.apink2011/", a: "8 Eonju-ro 172-gil, Sinsa-dong, Gangnam-gu, Seoul, Republic of Korea")
  static let weeekly
  = StarLocation(c: "IST Entertainment", n: "Weeekly", lon: 127.03444513975015, lat: 37.5276498196353, ins: "https://www.instagram.com/_Weeekly/", a: "8 Eonju-ro 172-gil, Sinsa-dong, Gangnam-gu, Seoul, Republic of Korea")
  static let atbo
  = StarLocation(c: "IST Entertainment", n: "ATBO", lon: 127.03444513975015, lat: 37.5276498196353, ins: "https://www.instagram.com/atboground/", a: "8 Eonju-ro 172-gil, Sinsa-dong, Gangnam-gu, Seoul, Republic of Korea")
  static let theBoys
  = StarLocation(c: "Cre.ker Ent", n: "The boys", lon: 127.03443801163216, lat: 37.527613589241454, ins: "https://www.instagram.com/official_theboyz/", a: "8, Eonju-ro 172-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //brave
  static let dkb
  = StarLocation(c: "brave Ent", n: "DKB", lon: 127.03026505742696, lat: 37.484965525079474, ins: "https://www.instagram.com/official.dkb/", a: "56-5, Gangnam-daero 37-gil, Seocho-gu, Seoul, Republic of Korea")
  
  //highup
  static let stayc
  = StarLocation(c: "highup Ent", n: "STAYC", lon: 126.91849952785246, lat: 37.55859279870897, ins: "https://www.instagram.com/stayc_highup/", a: "67, Donggyo-ro 23-gil, Mapo-gu, Seoul, Republic of Korea")
  
  //Around US
  static let highlight
  = StarLocation(c: "Around US Ent", n: "HIGHLIGHT", lon: 127.05023915124582, lat: 37.525532244900624, ins: "https://www.instagram.com/Highlight_AUent/", a: "37-1, Apgujeong-ro 79-gil, Gangnam-gu Seoul, Republic of Korea")
  
  //FNC
  static let sf9
  = StarLocation(c: "FNC Ent", n: "SF9", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/SF9official/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let nFlying
  = StarLocation(c: "FNC Ent", n: "N.Flying", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/letsroll_nf/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let p1harmony
  = StarLocation(c: "FNC Ent", n: "P1Harmony", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/p1h_official/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let cherryBullet
  = StarLocation(c: "FNC Ent", n: "Cherry Bullet", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/cherrybullet/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let cnBlue
  = StarLocation(c: "FNC Ent", n: "CNBLUE", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/jyheffect0622/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let ftisland
  = StarLocation(c: "FNC Ent", n: "FTISLAND", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/skullhong12/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let ampersNone
  = StarLocation(c: "FNC Ent", n: "AMPERS&ONE", lon: 127.04999011133275, lat: 37.527566454546225, ins: "https://www.instagram.com/ampersandone_official/", a: "46, Dosan-daero 85-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //AOMG
  static let simonDominic
  = StarLocation(c: "AOMG Ent", n: "Simon Dominic", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/longlivesmdc/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let gray
  = StarLocation(c: "AOMG Ent", n: "GRAY", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/callmegray/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let loco
  = StarLocation(c: "AOMG Ent", n: "Loco", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/satgotloco/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let leehi
  = StarLocation(c: "AOMG Ent", n: "LeeHi", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/leehi_hi/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let yugyeom
  = StarLocation(c: "AOMG Ent", n: "YUGYEOM", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/yugyeom/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let punchnello
  = StarLocation(c: "AOMG Ent", n: "punchnello", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/fkuropinion/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let hoody
  = StarLocation(c: "AOMG Ent", n: "Hoody", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/hoodykim/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let codeKunst
  = StarLocation(c: "AOMG Ent", n: "CODE KUNST", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/code_kunst/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let meenoi
  = StarLocation(c: "AOMG Ent", n: "MEENOI", lon: 127.013034, lat: 37.542880, ins: "https://www.instagram.com/meenoie/", a: "198, Dokseodang-ro, Seongdong-gu, Seoul, Republic of Korea")
  
  
  
  //Pnation
  static let psy
  = StarLocation(c: "Pnation Ent", n: "PSY", lon: 127.02631018131, lat: 37.519805650359004, ins: "https://www.instagram.com/42psy42/", a: "21, Nonhyeon-ro 151-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let crush
  = StarLocation(c: "Pnation Ent", n: "CRUSH", lon: 127.02631018131, lat: 37.519805650359004, ins: "https://www.instagram.com/crush9244/", a: "21, Nonhyeon-ro 151-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let heize
  = StarLocation(c: "Pnation Ent", n: "HEIZE", lon: 127.02631018131, lat: 37.519805650359004, ins: "https://www.instagram.com/heizeheize/", a: "21, Nonhyeon-ro 151-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let hwasa
  = StarLocation(c: "Pnation Ent", n: "HWASA", lon: 127.02631018131, lat: 37.519805650359004, ins: "https://www.instagram.com/_mariahwasa/", a: "21, Nonhyeon-ro 151-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let theNewSix
  = StarLocation(c: "Pnation Ent", n: "THE NEW SIX", lon: 127.02631018131, lat: 37.519805650359004, ins: "https://www.instagram.com/official.tnx/", a: "21, Nonhyeon-ro 151-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //oui
  static let wei
  = StarLocation(c: "oui Ent", n: "WEi", lon: 126.91296715390973, lat: 37.56297181299404, ins: "https://www.instagram.com/wei__official/", a: "20, World Cup buk-ro 15-gil, Mapo-gu, Seoul, Republic of Korea")
  
  
  //RBW
  static let mamamoo
  = StarLocation(c: "RBW Ent", n: "MAMAMOO+", lon: 127.07034145545165, lat: 37.568938122350474, ins: "https://www.instagram.com/mamamoo_official/", a: "7, Janghan-ro 20-gil, Dongdaemun-gu, Seoul, Republic of Korea")
  static let oneus
  = StarLocation(c: "RBW Ent", n: "ONEUS", lon: 127.07034145545165, lat: 37.568938122350474, ins: "https://www.instagram.com/official_oneus/", a: "7, Janghan-ro 20-gil, Dongdaemun-gu, Seoul, Republic of Korea")
  static let onewe
  = StarLocation(c: "RBW Ent", n: "ONEWE", lon: 127.07034145545165, lat: 37.568938122350474, ins: "https://www.instagram.com/official_onewe/", a: "7, Janghan-ro 20-gil, Dongdaemun-gu, Seoul, Republic of Korea")
  static let purpleKiss
  = StarLocation(c: "RBW Ent", n: "PURPLE KISS", lon: 127.07034145545165, lat: 37.568938122350474, ins: "https://www.instagram.com/purplekiss_official/", a: "7, Janghan-ro 20-gil, Dongdaemun-gu, Seoul, Republic of Korea")
  static let nxd
  = StarLocation(c: "RBW Ent", n: "NXD", lon: 127.07034145545165, lat: 37.568938122350474, ins: "https://www.instagram.com/nxd_rbw/", a: "7, Janghan-ro 20-gil, Dongdaemun-gu, Seoul, Republic of Korea")
  
  
  //KONNECT
  static let kangDaniel
  = StarLocation(c: "KONNECT Ent", n: "KANG DANIEL", lon: 127.03224174932411, lat: 37.52429778772655, ins: "https://www.instagram.com/daniel.k.here/", a: "7, Eonju-ro 159-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let yuju
  = StarLocation(c: "KONNECT Ent", n: "YUJU", lon: 127.03224174932411, lat: 37.52429778772655, ins: "https://www.instagram.com/yuuzth/", a: "7, Eonju-ro 159-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //ABYSS
  static let sunmi
  = StarLocation(c: "ABYSS Ent", n: "SUNMI", lon: 127.02520337147861, lat: 37.519630909672806, ins: "https://www.instagram.com/miyayeah/", a: "39, Gangnam-daero 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let bambam
  = StarLocation(c: "ABYSS Ent", n: "BamBam", lon: 127.02520337147861, lat: 37.519630909672806, ins: "https://www.instagram.com/BamBam1A/", a: "39, Gangnam-daero 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let sandaraPark
  = StarLocation(c: "ABYSS Ent", n: "Sandara Park", lon: 127.02520337147861, lat: 37.519630909672806, ins: "https://www.instagram.com/daraxxi/", a: "39, Gangnam-daero 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //CUBE
  static let jokwon
  = StarLocation(c: "CUBE Ent", n: "JO KWON", lon: 127.0508077245805, lat: 37.52532218993334, ins: "https://www.instagram.com/kwon_jo/", a: "83, Achasan-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let yooseonho
  = StarLocation(c: "CUBE Ent", n: "YOO SEONHO", lon: 127.0508077245805, lat: 37.52532218993334, ins: "https://www.instagram.com/official_yooseonho/", a: "83, Achasan-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let pentagon
  = StarLocation(c: "CUBE Ent", n: "PENTAGON", lon: 127.0508077245805, lat: 37.52532218993334, ins: "https://www.instagram.com/CUBE_PTG/", a: "83, Achasan-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let idle
  = StarLocation(c: "CUBE Ent", n: "(G)I-DLE", lon: 127.0508077245805, lat: 37.52532218993334, ins: "https://www.instagram.com/official_g_i_dle/", a: "83, Achasan-ro, Seongdong-gu, Seoul, Republic of Korea")
  static let lightsum
  = StarLocation(c: "CUBE Ent", n: "LIGHTSUM", lon: 127.0508077245805, lat: 37.52532218993334, ins: "https://www.instagram.com/cube_lightsum/", a: "83, Achasan-ro, Seongdong-gu, Seoul, Republic of Korea")
  
  //THEBLACKLABEL
  static let somi
  = StarLocation(c: "THEBLACKLABEL Ent", n: "SOMI", lon: 126.90815851767326, lat: 37.548866488955674, ins: "https://www.instagram.com/somsomi0309/", a: "3, Huiujeong-ro 1-gil, Mapo-gu, Seoul, Republic of Korea")
  static let zionT
  = StarLocation(c: "THEBLACKLABEL Ent", n: "Zion.T", lon: 126.90815851767326, lat: 37.548866488955674, ins: "https://www.instagram.com/ziont/", a: "3, Huiujeong-ro 1-gil, Mapo-gu, Seoul, Republic of Korea")
  static let taeyang
  = StarLocation(c: "THEBLACKLABEL Ent", n: "TAEYANG", lon: 126.90815851767326, lat: 37.548866488955674, ins: "https://www.instagram.com/__youngbae__/", a: "3, Huiujeong-ro 1-gil, Mapo-gu, Seoul, Republic of Korea")
  
  
  
  //Dreamcatcher Company
  static let dreamcatcher
  = StarLocation(c: "Dreamcatcher Company", n: "DREAMCATCHER", lon: 127.04441054106239, lat: 37.51110377276792, ins: "https://www.instagram.com/hf_dreamcatcher/", a: "8, Seolleung-ro 112-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //NV ENTERTAINMENT
  static let wooah
  = StarLocation(c: "NV Ent", n: "woo!ah!", lon: 127.03189774522995, lat: 37.508249972112374, ins: "https://www.instagram.com/wooah_nv/", a: "15, Nonhyeon-ro 113-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //C9 ENTERTAINMENT
  static let cix
  = StarLocation(c: "C9 Ent", n: "CIX", lon: 126.91750042313701, lat: 37.55011015329005, ins: "https://www.instagram.com/cix.official/", a: "41, Dongmak-ro 3-gil, Mapo-gu, Seoul, Republic of Korea")
  static let epex
  = StarLocation(c: "C9  Ent", n: "EPEX", lon: 126.91750042313701, lat: 37.55011015329005, ins: "https://www.instagram.com/epex.official/", a: "41, Dongmak-ro 3-gil, Mapo-gu, Seoul, Republic of Korea")
  static let younha
  = StarLocation(c: "C9 ENTERTAINMENT", n: "YounHa", lon: 126.91750042313701, lat: 37.55011015329005, ins: "https://www.instagram.com/younha_holic/", a: "41, Dongmak-ro 3-gil, Mapo-gu, Seoul, Republic of Korea")
  
  
  //Jellyfish Ent
  static let kimSeJeong
  = StarLocation(c: "Jellyfish Ent", n: "Kim Se Jeong", lon: 127.0324858649478, lat: 37.52343350922326, ins: "https://www.instagram.com/clean_0828/", a: "3-6, Eonju-ro 157-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let veriVery
  = StarLocation(c: "Jellyfish Ent", n: "VERIVERY", lon: 127.0324858649478, lat: 37.52343350922326, ins: "https://www.instagram.com/the_verivery/", a: "3-6, Eonju-ro 157-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let vixx
  = StarLocation(c: "Jellyfish Ent", n: "VIXX", lon: 127.0324858649478, lat: 37.52343350922326, ins: "https://www.instagram.com/vixx_stargram/", a: "3-6, Eonju-ro 157-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let evnne
  = StarLocation(c: "Jellyfish Ent", n: "EVNNE", lon: 127.0324858649478, lat: 37.52343350922326, ins: "https://www.instagram.com/evnne_official/", a: "3-6, Eonju-ro 157-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //KQ Ent
  static let ateez
  = StarLocation(c: "KQ Ent", n: "ATEEZ", lon: 126.92113713307869, lat: 37.55830037538593, ins: "https://www.instagram.com/ateez_official_/", a: "28, Donggyo-ro 25-gil, Mapo-gu, Seoul, Republic of Korea")
  static let xikers
  = StarLocation(c: "KQ Ent", n: "xikers", lon: 126.92113713307869, lat: 37.55830037538593, ins: "https://www.instagram.com/xikers_official/", a: "28, Donggyo-ro 25-gil, Mapo-gu, Seoul, Republic of Korea")
  
  
  //VINE Ent
  static let secretNumber
  = StarLocation(c: "VINE Ent", n: "SECRET NUMBER", lon: 127.04517880383546, lat: 37.518447294064266, ins: "https://www.instagram.com/secretnumber.official/", a: "4-1, Hakdong-ro 63-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //MLD Ent
  static let tfn
  = StarLocation(c: "MLD Ent", n: "TFN", lon: 127.03821442120307, lat: 37.51823899479922, ins: "https://www.instagram.com/t1419_official/", a: "29, Seolleung-ro 135-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let lapillus
  = StarLocation(c: "MLD Ent", n: "Lapillus", lon: 127.03821442120307, lat: 37.51823899479922, ins: "https://www.instagram.com/official.lapillus/", a: "29, Seolleung-ro 135-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let hori7on
  = StarLocation(c: "MLD Ent", n: "HORI7ON", lon: 127.03821442120307, lat: 37.51823899479922, ins: "https://www.instagram.com/hori7onofficial/", a: "29, Seolleung-ro 135-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //MAROO Ent
  static let parkJiHoon
  = StarLocation(c: "MAROO Ent", n: "PARK JIHOON", lon: 127.02625615854666, lat: 37.51661196790443, ins: "https://www.instagram.com/0529.jihoon.ig/", a: "55, Hakdong-ro 23-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let ghost9
  = StarLocation(c: "MAROO Ent", n: "GHOST9", lon: 127.02625615854666, lat: 37.51661196790443, ins: "https://www.instagram.com/official.ghost9/", a: "55, Hakdong-ro 23-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  //MAINSTREAM Ent
  static let leeYoungJi
  = StarLocation(c: "MAINSTREAM Ent", n: "Lee Young Ji", lon: 126.99283475550158, lat: 37.5394865262853, ins: "https://www.instagram.com/youngji_02/", a: "25, Hoenamu-ro 28-gil, Yongsan-gu, Seoul, Republic of Korea")
  static let kik5o
  = StarLocation(c: "MAINSTREAM Ent", n: "Kik5o", lon: 126.99283475550158, lat: 37.5394865262853, ins: "https://www.instagram.com/kik5o/", a: "25, Hoenamu-ro 28-gil, Yongsan-gu, Seoul, Republic of Korea")
  
  //WAKEONE Ent
  static let davichi
  = StarLocation(c: "WAKEONE Ent", n: "Davichi", lon: 126.9278955497378, lat: 37.54583496631648, ins: "https://www.instagram.com/davichi.official/", a: "153, Tojeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let joYuRi
  = StarLocation(c: "WAKEONE Ent", n: "Jo YuRi", lon: 126.9278955497378, lat: 37.54583496631648, ins: "https://www.instagram.com/joyuri_offcl/", a: "153, Tojeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let kep1er
  = StarLocation(c: "WAKEONE Ent", n: "Kep1er", lon: 126.9278955497378, lat: 37.54583496631648, ins: "https://www.instagram.com/official.kep1er/", a: "153, Tojeong-ro, Mapo-gu, Seoul, Republic of Korea")
  static let zeroBaseOne
  = StarLocation(c: "WAKEONE Ent", n: "ZEROBASEONE", lon: 126.9278955497378, lat: 37.54583496631648, ins: "https://www.instagram.com/zb1official/", a: "153, Tojeong-ro, Mapo-gu, Seoul, Republic of Korea")
  
  
  //SUBLIME ARTIST AGENCY
  static let jackson
  = StarLocation(c: "SUBLIME ARTIST AGENCY", n: "Jackson Wang", lon: 127.02565074880201, lat: 37.51820208719788, ins: "https://www.instagram.com/jacksonwang852g7/", a: "156, Dosan-daero, Gangnam-gu, Seoul, Republic of Korea")
  static let youngjae
  = StarLocation(c: "SUBLIME ARTIST AGENCY", n: "Young Jae", lon: 127.02565074880201, lat: 37.51820208719788, ins: "https://www.instagram.com/333cyj333/", a: "156, Dosan-daero, Gangnam-gu, Seoul, Republic of Korea")
  static let tiffany0
  = StarLocation(c: "SUBLIME ARTIST AGENCY", n: "Tiffany Young", lon: 127.02565074880201, lat: 37.51820208719788, ins: "https://www.instagram.com/tiffanyyoungofficial/", a: "156, Dosan-daero, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //Big Planet Made
  static let soyou
  = StarLocation(c: "Big Planet Made Ent", n: "So You", lon: 127.06345206006941, lat: 37.50493349637807, ins: "https://www.instagram.com/soooo_you/", a: "555, Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let viviz
  = StarLocation(c: "Big Planet Made Ent", n: "VIVIZ", lon: 127.06345206006941, lat: 37.50493349637807, ins: "https://www.instagram.com/viviz_official/", a: "555, Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  static let haSungWoon
  = StarLocation(c: "Big Planet Made Ent", n: "HA SUNG WOON", lon: 127.06345206006941, lat: 37.50493349637807, ins: "https://www.instagram.com/gooreumseng/", a: "555, Yeoksam-ro, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //143 Entertainment Inc.
  static let iKon
  = StarLocation(c: "143 Entertainment", n: "iKon", lon: 127.042303, lat: 37.522254, ins: "https://www.instagram.com/withikonic/", a: "27-8, Seolleung-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let limeLight
  = StarLocation(c: "143 Entertainment", n: "LIMELIGHT", lon: 127.042303, lat: 37.522254, ins: "https://www.instagram.com/limelightseoul/", a: "27-8, Seolleung-ro 146-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //WARNER MUSIC KOREA
  static let bbgirls
  = StarLocation(c: "WARNER MUSIC KOREA", n: "BBGIRLS", lon: 127.025134, lat: 37.516712, ins: "https://www.instagram.com/weare_bbgirls/", a: "20, Dosan-daero 16-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //MORE VISION
  static let jayPark
  = StarLocation(c: "MORE VISION", n: "Jay Park", lon: 127.026294, lat: 37.517317, ins: "https://www.instagram.com/moresojuplease/", a: "30, Nonhyeon-ro 145-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let jessi
  = StarLocation(c: "MORE VISION", n: "Jessi", lon: 127.026294, lat: 37.517317, ins: "https://www.instagram.com/jessicah_o/", a: "30, Nonhyeon-ro 145-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let chungHa
  = StarLocation(c: "MORE VISION", n: "CHUNGHA", lon: 127.026294, lat: 37.517317, ins: "https://www.instagram.com/morechunghaplz/", a: "30, Nonhyeon-ro 145-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //Modhaus Inc
  static let tripleS
  = StarLocation(c: "Modhaus", n: "trpleS", lon: 127.051753, lat: 37.525419, ins: "https://www.instagram.com/triplescosmos/", a: "56, Apgujeong-ro 79-gil, Gangnam-gu, Seoul, Republic of Korea")
  static let artms
  = StarLocation(c: "Modhaus", n: "ARTMS", lon: 127.051753, lat: 37.525419, ins: "https://www.instagram.com/official_artms/", a: "56, Apgujeong-ro 79-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //CTDENM
  static let loossemble
  = StarLocation(c: "CTDENM", n: "Loossemble", lon: 127.025964, lat: 37.517728, ins: "https://www.instagram.com/loossemble.official/", a: "31, Nonhyeon-ro 149-gil, Gangnam-gu, Seoul, Republic of Korea")
  
  
  //Earth
  static let seoul
  = StarLocation(c: "Earth", n: "Seoul", lon: 126.97695217135383, lat: 37.579481642414684, ins: "https://www.instagram.com/seoul_official/", a: "Seoul, Republic of Korea")
  static let arktic
  = StarLocation(c: "Earth", n: "Arctic", lon: 0, lat: 90, ins: "https://www.instagram.com/korea_polar/?hl=ko", a: "Arctic, Earth")
  static let antarctica
  = StarLocation(c: "Earth", n: "Antarctica", lon: 0, lat: -90, ins: "https://www.instagram.com/korea_polar/?hl=ko", a: "Antarctica, Earth")
  
  
  static let arrayOfAll: [StarLocation] = [bts, txt, enhypen, leSserafim, newJeans, iLLIT, seventeen, promise9, nana, baekho, hwangMinHyun, tws, zico, dvwn, boyNextDoor, jyPark, twoPm,
                                           day6, twice, strayKids, itzy,  niziu, xdianry,
                                           nmixx, vcha, nct, exo, aespa, shinee, superJunior, redVelvet, tvxq, taeyeon, hyoyeon, boa, yoona, yuri, riize,
                                           blackpink, winner, treasure, akmu, babyMosnter, monstaX, wjsn, jeongSewoon, cravity, ive, goldenChild,
                                           rocketPunch, drippin, kwonEunBi, astro, wekiMeki, ohMyGirl, b1a4, onf, leeChaeYeon, iu, apink, weeekly, atbo, theBoys, dkb, stayc, highlight, sf9, nFlying,
                                           p1harmony, cherryBullet, cnBlue, ftisland, ampersNone, simonDominic, gray, loco, leehi, yugyeom, punchnello, hoody, codeKunst, meenoi, psy,
                                            crush, heize, hwasa, theNewSix, wei, theBoys, mamamoo, oneus, onewe, purpleKiss, nxd,
                                            kangDaniel, yuju, sunmi, bambam, sandaraPark,
                                           jokwon, yooseonho, pentagon, idle, lightsum, somi, zionT, taeyang, dreamcatcher, wooah, cix, epex,
                                           younha, kimSeJeong, veriVery, vixx, evnne, ateez, xikers, secretNumber, tfn, lapillus, hori7on,   parkJiHoon, ghost9,
                                           leeYoungJi, kik5o, davichi, joYuRi, kep1er, zeroBaseOne, jackson, youngjae, tiffany0,
                                           soyou, viviz, haSungWoon, iKon, limeLight, bbgirls, jayPark, jessi, chungHa, tripleS, artms, loossemble, seoul, arktic, antarctica]
  
  static let hybe: [StarLocation] = [ bts, txt, enhypen, leSserafim, newJeans, iLLIT ]
  static let pledis: [StarLocation] = [ seventeen, promise9, nana, baekho, hwangMinHyun, tws ]
  static let koz: [StarLocation] = [ zico, dvwn, boyNextDoor ]
  static let jypEnt: [StarLocation] = [ jyPark, twoPm, day6, twice, strayKids, itzy, niziu, xdianry, nmixx, vcha ]
  static let sm: [StarLocation] = [ nct, exo, aespa, shinee, superJunior, redVelvet, tvxq, taeyeon, hyoyeon, boa, yoona, yuri, riize ]
  static let yg: [StarLocation] = [ blackpink, winner, treasure, akmu, babyMosnter]
  static let starship: [StarLocation] = [ monstaX, wjsn, jeongSewoon, cravity, ive ]
  static let woollim: [StarLocation] = [ goldenChild, rocketPunch, drippin, kwonEunBi ]
  static let fantazio: [StarLocation] = [ astro, wekiMeki ]
  static let wm: [StarLocation] = [ ohMyGirl, b1a4, onf, leeChaeYeon ]
  static let edam: [StarLocation] = [ iu ]
  static let ist: [StarLocation] = [ apink, weeekly, atbo, theBoys ]
  static let brave: [StarLocation] = [ dkb ]
  static let highup: [StarLocation] = [ stayc ]
  static let aroundUs: [StarLocation] = [ highlight ]
  static let fnc: [StarLocation] = [ sf9, nFlying, p1harmony, cherryBullet, cnBlue, ftisland, ampersNone ]
  static let aomg: [StarLocation] = [ simonDominic, gray, loco, leehi, yugyeom, punchnello, hoody, codeKunst, meenoi ]
  static let pnation: [StarLocation] = [ psy, crush, heize, hwasa, theNewSix ]
  static let oui: [StarLocation] = [ wei ]
  static let rbw: [StarLocation] = [ mamamoo, oneus, onewe, purpleKiss, nxd ]
  static let konnect: [StarLocation] = [ kangDaniel, yuju ]
  static let abyss: [StarLocation] = [ sunmi, bambam, sandaraPark ]
  static let cube: [StarLocation] = [ jokwon, yooseonho, pentagon, idle, lightsum ]
  static let blacklabel: [StarLocation] = [ somi, zionT, taeyang ]
  static let dreamcatcherEnt: [StarLocation] = [ dreamcatcher ]
  static let nv: [StarLocation] = [ wooah ]
  static let c9: [StarLocation] = [ cix, epex, younha ]
  static let jellyfish: [StarLocation] = [kimSeJeong, veriVery, vixx, evnne]
  static let kq: [StarLocation] = [ateez, xikers]
  static let vine: [StarLocation] = [secretNumber]
  static let mld: [StarLocation] = [ tfn, lapillus, hori7on ]
  static let maroo: [StarLocation] = [ parkJiHoon, ghost9]
  static let mainstream: [StarLocation] = [leeYoungJi, kik5o]
  static let wakeone: [StarLocation] = [davichi, joYuRi, kep1er, zeroBaseOne ]
  static let sublime: [StarLocation] = [ jackson, youngjae, tiffany0 ]
  static let bigplanet: [StarLocation] = [soyou, viviz, haSungWoon]
  static let oneFourThree: [StarLocation] = [iKon, limeLight]
  static let warner: [StarLocation] = [bbgirls]
  static let moreVision: [StarLocation] = [jayPark, jessi, chungHa]
  static let modhaus: [StarLocation] = [tripleS, artms]
  static let ctd: [StarLocation] = [loossemble]
  static let earth: [StarLocation] = [seoul, arktic, antarctica]
  
  static let companyArray = [hybe, pledis, koz, jypEnt, sm, yg, starship, woollim, fantazio, wm, edam, ist, brave, highup,
                             aroundUs, fnc, aomg, pnation, oui, rbw, konnect, abyss, cube, blacklabel, dreamcatcherEnt,
                             nv, c9, jellyfish, kq, vine, mld, maroo, mainstream, wakeone, sublime,
                             bigplanet, oneFourThree, warner, moreVision, modhaus, ctd, earth]
  
  //모든 소속사의 위치가 보이는 지도에서 HYBE 계열이 중복되어 보여서, pledis, koz 는 이 목록에서 삭제함.
  static let sectionArray: [StarLocation] = [
    seoul, bts, jyPark, nct, blackpink, monstaX, goldenChild, astro, ohMyGirl, iu, apink,
    dkb, stayc, highlight, sf9, simonDominic, psy, wei, mamamoo,
    kangDaniel, sunmi, jokwon, somi, dreamcatcher, wooah, cix, kimSeJeong, ateez, secretNumber,
    tfn, parkJiHoon, leeYoungJi, davichi, jackson, soyou, iKon, bbgirls, jayPark, tripleS, loossemble
  ]
  
  
  
  
  
}
