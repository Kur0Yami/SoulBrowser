.class public final enum Lj$/time/chrono/u;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lj$/time/chrono/n;


# static fields
.field public static final enum BCE:Lj$/time/chrono/u;

.field public static final enum CE:Lj$/time/chrono/u;

.field public static final synthetic a:[Lj$/time/chrono/u;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 112
    new-instance v0, Lj$/time/chrono/u;

    .line 106
    const-string v1, "BCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 112
    sput-object v0, Lj$/time/chrono/u;->BCE:Lj$/time/chrono/u;

    .line 117
    new-instance v1, Lj$/time/chrono/u;

    .line 106
    const-string v3, "CE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 117
    sput-object v1, Lj$/time/chrono/u;->CE:Lj$/time/chrono/u;

    const/4 v3, 0x2

    .line 106
    new-array v3, v3, [Lj$/time/chrono/u;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lj$/time/chrono/u;->a:[Lj$/time/chrono/u;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lj$/time/chrono/u;
    .locals 1

    .line 106
    const-class v0, Lj$/time/chrono/u;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lj$/time/chrono/u;

    return-object p0
.end method

.method public static values()[Lj$/time/chrono/u;
    .locals 1

    .line 106
    sget-object v0, Lj$/time/chrono/u;->a:[Lj$/time/chrono/u;

    invoke-virtual {v0}, [Lj$/time/chrono/u;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lj$/time/chrono/u;

    return-object v0
.end method


# virtual methods
.method public final synthetic c(Lj$/time/temporal/r;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->l(Lj$/time/chrono/n;Lj$/time/temporal/r;)Z

    move-result p1

    return p1
.end method

.method public final synthetic d(Lj$/time/h;)Ljava/lang/Object;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->p(Lj$/time/chrono/n;Lj$/time/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic g(Lj$/time/temporal/r;)I
    .locals 0

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->i(Lj$/time/chrono/n;Lj$/time/temporal/r;)I

    move-result p1

    return p1
.end method

.method public final getValue()I
    .locals 1

    .line 151
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    return v0
.end method

.method public final i(Lj$/time/temporal/r;)Lj$/time/temporal/v;
    .locals 0

    .line 179
    invoke-static {p0, p1}, Lj$/time/temporal/s;->d(Lj$/time/temporal/n;Lj$/time/temporal/r;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .locals 3

    .line 301
    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0}, Lj$/time/chrono/u;->getValue()I

    move-result v1

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->a(JLj$/time/temporal/r;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic y(Lj$/time/temporal/r;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/com/android/tools/r8/a;->j(Lj$/time/chrono/n;Lj$/time/temporal/r;)J

    move-result-wide v0

    return-wide v0
.end method
