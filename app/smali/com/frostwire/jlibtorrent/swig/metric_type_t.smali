.class public final Lcom/frostwire/jlibtorrent/swig/metric_type_t;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

.field public static e:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 2
    .line 3
    const-string v1, "counter"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/metric_type_t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->c:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 11
    .line 12
    const-string v1, "gauge"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/metric_type_t;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->d:Lcom/frostwire/jlibtorrent/swig/metric_type_t;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    sput v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->e:I

    .line 21
    .line 22
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->b:Ljava/lang/String;

    .line 5
    .line 6
    sget p1, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->e:I

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    sput v0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->e:I

    .line 11
    .line 12
    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->a:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/metric_type_t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
