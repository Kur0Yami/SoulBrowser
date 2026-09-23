.class public final Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/peer_info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "connection_type_t"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 2
    .line 3
    const-string v1, "standard_bittorrent"

    .line 4
    .line 5
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_standard_bittorrent_get()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->c:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 13
    .line 14
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 15
    .line 16
    const-string v1, "web_seed"

    .line 17
    .line 18
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_web_seed_get()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;-><init>(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->d:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 26
    .line 27
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 28
    .line 29
    const-string v1, "http_seed"

    .line 30
    .line 31
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->peer_info_http_seed_get()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;-><init>(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->e:Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;

    .line 39
    .line 40
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->b:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->a:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/peer_info$connection_type_t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
