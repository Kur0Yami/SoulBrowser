.class public Lj$/util/DesugarTimeZone;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 0

    .line 148
    invoke-static {p0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object p0

    return-object p0
.end method

.method public static toZoneId(Ljava/util/TimeZone;)Lj$/time/ZoneId;
    .locals 2

    .line 180
    invoke-virtual {p0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v0, Lj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    .line 310
    const-string v1, "zoneId"

    invoke-static {p0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 311
    const-string v1, "aliasMap"

    invoke-static {v0, v1}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 312
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    const-string v0, "defaultObj"

    invoke-static {p0, v0}, Lj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 312
    :goto_0
    check-cast v0, Ljava/lang/String;

    const/4 p0, 0x1

    .line 357
    invoke-static {v0, p0}, Lj$/time/ZoneId;->L(Ljava/lang/String;Z)Lj$/time/ZoneId;

    move-result-object p0

    return-object p0
.end method
