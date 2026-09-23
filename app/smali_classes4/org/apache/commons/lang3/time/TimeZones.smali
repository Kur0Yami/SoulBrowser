.class public Lorg/apache/commons/lang3/time/TimeZones;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "GMT"

    .line 2
    .line 3
    invoke-static {v0}, Lorg/apache/commons/lang3/time/TimeZones;->a(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 4
    .line 5
    .line 6
    sget-object v0, Lorg/apache/commons/lang3/JavaVersion;->g:Lorg/apache/commons/lang3/JavaVersion;

    .line 7
    .line 8
    sget-object v0, Lorg/apache/commons/lang3/SystemUtils;->b:Lorg/apache/commons/lang3/JavaVersion;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget v0, v0, Lorg/apache/commons/lang3/JavaVersion;->c:F

    .line 13
    .line 14
    const/high16 v1, 0x41c80000    # 25.0f

    .line 15
    .line 16
    cmpl-float v0, v0, v1

    .line 17
    .line 18
    if-ltz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    sput-boolean v0, Lorg/apache/commons/lang3/time/TimeZones;->a:Z

    .line 24
    .line 25
    return-void
.end method

.method public static a(Ljava/lang/String;)Ljava/util/TimeZone;
    .locals 3

    .line 1
    sget-boolean v0, Lorg/apache/commons/lang3/time/TimeZones;->a:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sget-object v1, Lorg/apache/commons/lang3/ClassUtils;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    const-string v1, "TimeZones"

    .line 13
    .line 14
    const-string v2, ".mapShortIDs"

    .line 15
    .line 16
    invoke-static {v0, v1, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sget-object v1, Lorg/apache/commons/lang3/function/Suppliers;->a:Lorg/apache/commons/lang3/builder/a;

    .line 21
    .line 22
    invoke-static {v0, v1}, Lorg/apache/commons/lang3/SystemProperties;->a(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    :goto_0
    if-eqz v0, :cond_1

    .line 35
    .line 36
    sget-object v0, Lj$/time/ZoneId;->SHORT_IDS:Ljava/util/Map;

    .line 37
    .line 38
    invoke-static {v0, p0, p0}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/String;

    .line 43
    .line 44
    :cond_1
    invoke-static {p0}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    return-object p0
.end method
