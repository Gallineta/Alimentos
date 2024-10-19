import 'dart:convert';

List<Alimentos?> alimentosFromJson(String str) => List<Alimentos?>.from(json.decode(str).map((x) => x == null ? null : Alimentos.fromJson(x)));

String alimentosToJson(List<Alimentos?> data) => json.encode(List<dynamic>.from(data.map((x) => x?.toJson())));

class Alimentos {
    int nDe;
    String alimentos;
    dynamic calorias;
    double protenaG;
    double grasasG;
    double choDG;
    double choTG;
    double fibraTG;
    dynamic calcioMg;
    dynamic fsforoMg;
    double hierroMg;
    int magnesioMg;
    double zincMg;
    double cobreMg;
    dynamic sodioMg;
    dynamic potasioMg;
    dynamic vitaminaAEr;
    dynamic bCarotenoEt;
    double tiaminaMg;
    double riboflavinaMg;
    double niacinaMg;
    double vitaminaB6Mg;
    dynamic acidoAscMg;

    Alimentos({
        required this.nDe,
        required this.alimentos,
        required this.calorias,
        required this.protenaG,
        required this.grasasG,
        required this.choDG,
        required this.choTG,
        required this.fibraTG,
        required this.calcioMg,
        required this.fsforoMg,
        required this.hierroMg,
        required this.magnesioMg,
        required this.zincMg,
        required this.cobreMg,
        required this.sodioMg,
        required this.potasioMg,
        required this.vitaminaAEr,
        required this.bCarotenoEt,
        required this.tiaminaMg,
        required this.riboflavinaMg,
        required this.niacinaMg,
        required this.vitaminaB6Mg,
        required this.acidoAscMg,
    });

    factory Alimentos.fromJson(Map<String, dynamic> json) => Alimentos(
        nDe: json["N° de"],
        alimentos: json["Alimentos"],
        calorias: json["Calorias"],
        protenaG: json["Proteína g"]?.toDouble(),
        grasasG: json["Grasas g"]?.toDouble(),
        choDG: json["CHO D g"]?.toDouble(),
        choTG: json["CHO T g"]?.toDouble(),
        fibraTG: json["Fibra T g"]?.toDouble(),
        calcioMg: json["Calcio mg"],
        fsforoMg: json["Fósforo mg"],
        hierroMg: json["Hierro mg"]?.toDouble(),
        magnesioMg: json["Magnesio mg"],
        zincMg: json["Zinc mg"]?.toDouble(),
        cobreMg: json["Cobre mg"]?.toDouble(),
        sodioMg: json["Sodio mg"],
        potasioMg: json["Potasio mg"],
        vitaminaAEr: json["Vitamina A ER"],
        bCarotenoEt: json["b Caroteno ET"],
        tiaminaMg: json["Tiamina mg"]?.toDouble(),
        riboflavinaMg: json["Riboflavina mg"]?.toDouble(),
        niacinaMg: json["Niacina mg"]?.toDouble(),
        vitaminaB6Mg: json["Vitamina B6 mg"]?.toDouble(),
        acidoAscMg: json["Acido asc. Mg"],
    );

    Map<String, dynamic> toJson() => {
        "N° de": nDe,
        "Alimentos": alimentos,
        "Calorias": calorias,
        "Proteína g": protenaG,
        "Grasas g": grasasG,
        "CHO D g": choDG,
        "CHO T g": choTG,
        "Fibra T g": fibraTG,
        "Calcio mg": calcioMg,
        "Fósforo mg": fsforoMg,
        "Hierro mg": hierroMg,
        "Magnesio mg": magnesioMg,
        "Zinc mg": zincMg,
        "Cobre mg": cobreMg,
        "Sodio mg": sodioMg,
        "Potasio mg": potasioMg,
        "Vitamina A ER": vitaminaAEr,
        "b Caroteno ET": bCarotenoEt,
        "Tiamina mg": tiaminaMg,
        "Riboflavina mg": riboflavinaMg,
        "Niacina mg": niacinaMg,
        "Vitamina B6 mg": vitaminaB6Mg,
        "Acido asc. Mg": acidoAscMg,
    };
}


// To parse this JSON data, do
//
//     final alimentos2 = alimentos2FromJson(jsonString);



List<Alimentos2> alimentos2FromJson(String str) => List<Alimentos2>.from(json.decode(str).map((x) => Alimentos2.fromJson(x)));

String alimentos2ToJson(List<Alimentos2> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Alimentos2 {
    double? codigo;
    String alimento;
    int cantidad;
    int? caloras;
    double? humedG;
    double? protenaG;
    int? fsforoMg;
    double? grasasG;
    double? carbohidratosDispon;
    double? carbohidratosTotales;
    double? fibraDietticaTotal;
    double? fibraDietticaInsoluble;
    double? cenizasG;
    int? calcioMg;
    double? hierroMg;
    double? tiaminaMg;
    double? riboflavinaMg;
    double? niacinaMg;
    double? potasioMg;
    int? magnesioMg;
    double? zincMg;
    int? sodioMg;
    double? cobreMg;
    int? vitaminaAFR;
    double? vitaminaB6Mg;
    double? carotenoEquivTotal;
    int? acidAscorbMg;

    Alimentos2({
        this.codigo,
        required this.alimento,
        required this.cantidad,
        this.caloras,
        this.humedG,
        this.protenaG,
        this.fsforoMg,
        this.grasasG,
        this.carbohidratosDispon,
        this.carbohidratosTotales,
        this.fibraDietticaTotal,
        this.fibraDietticaInsoluble,
        this.cenizasG,
        this.calcioMg,
        this.hierroMg,
        this.tiaminaMg,
        this.riboflavinaMg,
        this.niacinaMg,
        this.potasioMg,
        this.magnesioMg,
        this.zincMg,
        this.sodioMg,
        this.cobreMg,
        this.vitaminaAFR,
        this.vitaminaB6Mg,
        this.carotenoEquivTotal,
        this.acidAscorbMg,
    });

    factory Alimentos2.fromJson(Map<String, dynamic> json) => Alimentos2(
        codigo: json["Codigo"]?.toDouble(),
        alimento: json["Alimento"],
        cantidad: json["Cantidad"],
        caloras: json["Calorías"],
        humedG: json["Humed. (g)"]?.toDouble(),
        protenaG: json["Proteína (g)"]?.toDouble(),
        fsforoMg: json["Fósforo (mg)"],
        grasasG: json["Grasas (g)"]?.toDouble(),
        carbohidratosDispon: json["Carbohidratos Dispon"]?.toDouble(),
        carbohidratosTotales: json["Carbohidratos Totales"]?.toDouble(),
        fibraDietticaTotal: json["Fibra Dietética Total"]?.toDouble(),
        fibraDietticaInsoluble: json["Fibra Dietética Insoluble"]?.toDouble(),
        cenizasG: json["Cenizas (g)"]?.toDouble(),
        calcioMg: json["Calcio (mg)"],
        hierroMg: json["Hierro (mg)"]?.toDouble(),
        tiaminaMg: json["Tiamina (mg)"]?.toDouble(),
        riboflavinaMg: json["Riboflavina (mg)"]?.toDouble(),
        niacinaMg: json["Niacina (mg)"]?.toDouble(),
        potasioMg: json["Potasio (mg)"]?.toDouble(),
        magnesioMg: json["Magnesio (mg)"],
        zincMg: json["Zinc (mg)"]?.toDouble(),
        sodioMg: json["Sodio (mg)"],
        cobreMg: json["Cobre (mg)"]?.toDouble(),
        vitaminaAFR: json["Vitamina A (F.R.)"],
        vitaminaB6Mg: json["Vitamina B6 (mg)"]?.toDouble(),
        carotenoEquivTotal: json["Caroteno equiv. Total"]?.toDouble(),
        acidAscorbMg: json["Acid. Ascorb. (mg)"],
    );

    Map<String, dynamic> toJson() => {
        "Codigo": codigo,
        "Alimento": alimento,
        "Cantidad": cantidad,
        "Calorías": caloras,
        "Humed. (g)": humedG,
        "Proteína (g)": protenaG,
        "Fósforo (mg)": fsforoMg,
        "Grasas (g)": grasasG,
        "Carbohidratos Dispon": carbohidratosDispon,
        "Carbohidratos Totales": carbohidratosTotales,
        "Fibra Dietética Total": fibraDietticaTotal,
        "Fibra Dietética Insoluble": fibraDietticaInsoluble,
        "Cenizas (g)": cenizasG,
        "Calcio (mg)": calcioMg,
        "Hierro (mg)": hierroMg,
        "Tiamina (mg)": tiaminaMg,
        "Riboflavina (mg)": riboflavinaMg,
        "Niacina (mg)": niacinaMg,
        "Potasio (mg)": potasioMg,
        "Magnesio (mg)": magnesioMg,
        "Zinc (mg)": zincMg,
        "Sodio (mg)": sodioMg,
        "Cobre (mg)": cobreMg,
        "Vitamina A (F.R.)": vitaminaAFR,
        "Vitamina B6 (mg)": vitaminaB6Mg,
        "Caroteno equiv. Total": carotenoEquivTotal,
        "Acid. Ascorb. (mg)": acidAscorbMg,
    };
}
