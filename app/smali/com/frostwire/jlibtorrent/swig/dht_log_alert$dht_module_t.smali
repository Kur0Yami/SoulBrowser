.class public final Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/dht_log_alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "dht_module_t"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

.field public static h:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 2
    .line 3
    const-string v1, "tracker"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->c:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 11
    .line 12
    const-string v1, "node"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->d:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 18
    .line 19
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 20
    .line 21
    const-string v1, "routing_table"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->e:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 27
    .line 28
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 29
    .line 30
    const-string v1, "rpc_manager"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->f:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 36
    .line 37
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 38
    .line 39
    const-string v1, "traversal"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->g:Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    sput v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->h:I

    .line 48
    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->b:Ljava/lang/String;

    .line 5
    .line 6
    sget p1, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->h:I

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    sput v0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->h:I

    .line 11
    .line 12
    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->a:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/dht_log_alert$dht_module_t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
