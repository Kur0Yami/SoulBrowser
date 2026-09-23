.class public final Lj$/time/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/time/temporal/m;
.implements Lj$/time/temporal/o;
.implements Ljava/lang/Comparable;
.implements Ljava/io/Serializable;


# static fields
.field public static final synthetic b:I = 0x0

.field private static final serialVersionUID:J = -0x51d949b44ef9efL


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Lj$/time/format/u;

    invoke-direct {v0}, Lj$/time/format/u;-><init>()V

    sget-object v1, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    const/16 v2, 0xa

    sget-object v3, Lj$/time/format/f0;->EXCEEDS_PAD:Lj$/time/format/f0;

    const/4 v4, 0x4

    .line 155
    invoke-virtual {v0, v1, v4, v2, v3}, Lj$/time/format/u;->m(Lj$/time/temporal/r;IILj$/time/format/f0;)V

    .line 2203
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    .line 2224
    sget-object v2, Lj$/time/format/e0;->SMART:Lj$/time/format/e0;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lj$/time/format/u;->q(Ljava/util/Locale;Lj$/time/format/e0;Lj$/time/chrono/m;)Lj$/time/format/DateTimeFormatter;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 326
    iput p1, p0, Lj$/time/u;->a:I

    return-void
.end method

.method public static K(I)Lj$/time/u;
    .locals 3

    .line 226
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    int-to-long v1, p0

    invoke-virtual {v0, v1, v2}, Lj$/time/temporal/a;->u(J)V

    .line 227
    new-instance v0, Lj$/time/u;

    invoke-direct {v0, p0}, Lj$/time/u;-><init>(I)V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 1111
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Deserialization via serialization delegate"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 2

    .line 1101
    new-instance v0, Lj$/time/s;

    const/16 v1, 0xb

    invoke-direct {v0, v1, p0}, Lj$/time/s;-><init>(BLjava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final L(JLj$/time/temporal/t;)Lj$/time/u;
    .locals 2

    .line 709
    instance-of v0, p3, Lj$/time/temporal/b;

    if-eqz v0, :cond_5

    .line 710
    sget-object v0, Lj$/time/t;->b:[I

    move-object v1, p3

    check-cast v1, Lj$/time/temporal/b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 715
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/u;->y(Lj$/time/temporal/r;)J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lj$/com/android/tools/r8/a;->I(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->N(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 717
    :cond_0
    new-instance p1, Lj$/time/temporal/u;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Unsupported unit: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 717
    throw p1

    :cond_1
    const/16 p3, 0x3e8

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide p1

    .line 714
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->M(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_2
    const/16 p3, 0x64

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide p1

    .line 713
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->M(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_3
    const/16 p3, 0xa

    int-to-long v0, p3

    .line 0
    invoke-static {p1, p2, v0, v1}, Lj$/com/android/tools/r8/a;->O(JJ)J

    move-result-wide p1

    .line 712
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->M(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 711
    :cond_4
    invoke-virtual {p0, p1, p2}, Lj$/time/u;->M(J)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 719
    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/t;->d(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method public final M(J)Lj$/time/u;
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    return-object p0

    .line 735
    :cond_0
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/u;->a:I

    int-to-long v1, v1

    add-long/2addr v1, p1

    .line 669
    iget-object p1, v0, Lj$/time/temporal/a;->b:Lj$/time/temporal/v;

    .line 732
    invoke-virtual {p1, v1, v2, v0}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result p1

    .line 735
    invoke-static {p1}, Lj$/time/u;->K(I)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final N(JLj$/time/temporal/r;)Lj$/time/u;
    .locals 4

    .line 620
    instance-of v0, p3, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 621
    move-object v0, p3

    check-cast v0, Lj$/time/temporal/a;

    .line 622
    invoke-virtual {v0, p1, p2}, Lj$/time/temporal/a;->u(J)V

    .line 623
    sget-object v1, Lj$/time/t;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 626
    sget-object p3, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    invoke-virtual {p0, p3}, Lj$/time/u;->y(Lj$/time/temporal/r;)J

    move-result-wide v2

    cmp-long p1, v2, p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    iget p1, p0, Lj$/time/u;->a:I

    sub-int/2addr v1, p1

    invoke-static {v1}, Lj$/time/u;->K(I)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 628
    :cond_1
    new-instance p1, Lj$/time/temporal/u;

    const-string p2, "Unsupported field: "

    .line 0
    invoke-static {p2, p3}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/r;)Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 628
    throw p1

    :cond_2
    long-to-int p1, p1

    .line 625
    invoke-static {p1}, Lj$/time/u;->K(I)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 624
    :cond_3
    iget p3, p0, Lj$/time/u;->a:I

    if-ge p3, v1, :cond_4

    const-wide/16 v0, 0x1

    sub-long p1, v0, p1

    :cond_4
    long-to-int p1, p1

    invoke-static {p1}, Lj$/time/u;->K(I)Lj$/time/u;

    move-result-object p1

    return-object p1

    .line 630
    :cond_5
    invoke-interface {p3, p0, p1, p2}, Lj$/time/temporal/r;->l(Lj$/time/temporal/m;J)Lj$/time/temporal/m;

    move-result-object p1

    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method public final bridge synthetic a(JLj$/time/temporal/r;)Lj$/time/temporal/m;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->N(JLj$/time/temporal/r;)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic b(JLj$/time/temporal/t;)Lj$/time/temporal/m;
    .locals 0

    .line 135
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->L(JLj$/time/temporal/t;)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final c(Lj$/time/temporal/r;)Z
    .locals 1

    .line 369
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_0

    .line 370
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-eq p1, v0, :cond_1

    sget-object v0, Lj$/time/temporal/a;->ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 372
    invoke-interface {p1, p0}, Lj$/time/temporal/r;->d(Lj$/time/temporal/n;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public final compareTo(Ljava/lang/Object;)I
    .locals 1

    .line 135
    check-cast p1, Lj$/time/u;

    .line 1024
    iget v0, p0, Lj$/time/u;->a:I

    iget p1, p1, Lj$/time/u;->a:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final d(Lj$/time/h;)Ljava/lang/Object;
    .locals 1

    .line 823
    sget-object v0, Lj$/time/temporal/s;->b:Lj$/time/h;

    if-ne p1, v0, :cond_0

    .line 824
    sget-object p1, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    return-object p1

    .line 825
    :cond_0
    sget-object v0, Lj$/time/temporal/s;->c:Lj$/time/h;

    if-ne p1, v0, :cond_1

    .line 826
    sget-object p1, Lj$/time/temporal/b;->YEARS:Lj$/time/temporal/b;

    return-object p1

    .line 828
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/s;->c(Lj$/time/temporal/n;Lj$/time/h;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1061
    :cond_0
    instance-of v1, p1, Lj$/time/u;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1062
    iget v1, p0, Lj$/time/u;->a:I

    check-cast p1, Lj$/time/u;

    iget p1, p1, Lj$/time/u;->a:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final g(Lj$/time/temporal/r;)I
    .locals 3

    .line 469
    invoke-virtual {p0, p1}, Lj$/time/u;->i(Lj$/time/temporal/r;)Lj$/time/temporal/v;

    move-result-object v0

    invoke-virtual {p0, p1}, Lj$/time/u;->y(Lj$/time/temporal/r;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Lj$/time/temporal/v;->a(JLj$/time/temporal/r;)I

    move-result p1

    return p1
.end method

.method public final h(Lj$/time/g;)Lj$/time/temporal/m;
    .locals 0

    .line 1592
    invoke-static {p1, p0}, Lj$/com/android/tools/r8/a;->a(Lj$/time/chrono/b;Lj$/time/temporal/m;)Lj$/time/temporal/m;

    move-result-object p1

    .line 574
    check-cast p1, Lj$/time/u;

    return-object p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1074
    iget v0, p0, Lj$/time/u;->a:I

    return v0
.end method

.method public final i(Lj$/time/temporal/r;)Lj$/time/temporal/v;
    .locals 4

    .line 435
    sget-object v0, Lj$/time/temporal/a;->YEAR_OF_ERA:Lj$/time/temporal/a;

    if-ne p1, v0, :cond_1

    .line 436
    iget p1, p0, Lj$/time/u;->a:I

    const-wide/16 v0, 0x1

    if-gtz p1, :cond_0

    const-wide/32 v2, 0x3b9aca00

    :goto_0
    invoke-static {v0, v1, v2, v3}, Lj$/time/temporal/v;->f(JJ)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1

    :cond_0
    const-wide/32 v2, 0x3b9ac9ff

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {p0, p1}, Lj$/time/temporal/s;->d(Lj$/time/temporal/n;Lj$/time/temporal/r;)Lj$/time/temporal/v;

    move-result-object p1

    return-object p1
.end method

.method public final l(Lj$/time/temporal/m;)Lj$/time/temporal/m;
    .locals 3

    .line 859
    invoke-static {p1}, Lj$/com/android/tools/r8/a;->G(Lj$/time/temporal/n;)Lj$/time/chrono/m;

    move-result-object v0

    sget-object v1, Lj$/time/chrono/t;->c:Lj$/time/chrono/t;

    invoke-interface {v0, v1}, Lj$/time/chrono/m;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 862
    sget-object v0, Lj$/time/temporal/a;->YEAR:Lj$/time/temporal/a;

    iget v1, p0, Lj$/time/u;->a:I

    int-to-long v1, v1

    invoke-interface {p1, v1, v2, v0}, Lj$/time/temporal/m;->a(JLj$/time/temporal/r;)Lj$/time/temporal/m;

    move-result-object p1

    return-object p1

    .line 860
    :cond_0
    new-instance p1, Lj$/time/b;

    const-string v0, "Adjustment only supported on ISO date-time"

    .line 88
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 860
    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1085
    iget v0, p0, Lj$/time/u;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u(JLj$/time/temporal/b;)Lj$/time/temporal/m;
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    const-wide p1, 0x7fffffffffffffffL

    .line 785
    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->L(JLj$/time/temporal/t;)Lj$/time/u;

    move-result-object p1

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1, p3}, Lj$/time/u;->L(JLj$/time/temporal/t;)Lj$/time/u;

    move-result-object p1

    return-object p1

    :cond_0
    neg-long p1, p1

    invoke-virtual {p0, p1, p2, p3}, Lj$/time/u;->L(JLj$/time/temporal/t;)Lj$/time/u;

    move-result-object p1

    return-object p1
.end method

.method public final y(Lj$/time/temporal/r;)J
    .locals 3

    .line 497
    instance-of v0, p1, Lj$/time/temporal/a;

    if-eqz v0, :cond_5

    .line 498
    sget-object v0, Lj$/time/t;->a:[I

    move-object v1, p1

    check-cast v1, Lj$/time/temporal/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 501
    iget p1, p0, Lj$/time/u;->a:I

    if-ge p1, v1, :cond_0

    const/4 v1, 0x0

    :cond_0
    int-to-long v0, v1

    return-wide v0

    .line 503
    :cond_1
    new-instance v0, Lj$/time/temporal/u;

    const-string v1, "Unsupported field: "

    .line 0
    invoke-static {v1, p1}, Lj$/time/c;->a(Ljava/lang/String;Lj$/time/temporal/r;)Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 503
    throw v0

    .line 500
    :cond_2
    iget p1, p0, Lj$/time/u;->a:I

    int-to-long v0, p1

    return-wide v0

    .line 499
    :cond_3
    iget p1, p0, Lj$/time/u;->a:I

    if-ge p1, v1, :cond_4

    rsub-int/lit8 p1, p1, 0x1

    :cond_4
    int-to-long v0, p1

    return-wide v0

    .line 505
    :cond_5
    invoke-interface {p1, p0}, Lj$/time/temporal/r;->i(Lj$/time/temporal/n;)J

    move-result-wide v0

    return-wide v0
.end method
