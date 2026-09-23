.class public final Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/torrent_status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "state_t"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

.field public static i:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 2
    .line 3
    const-string v1, "checking_files"

    .line 4
    .line 5
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_status_checking_files_get()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;I)V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->c:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 13
    .line 14
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 15
    .line 16
    const-string v1, "downloading_metadata"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->d:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 22
    .line 23
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 24
    .line 25
    const-string v1, "downloading"

    .line 26
    .line 27
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->e:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 31
    .line 32
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 33
    .line 34
    const-string v1, "finished"

    .line 35
    .line 36
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->f:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 40
    .line 41
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 42
    .line 43
    const-string v1, "seeding"

    .line 44
    .line 45
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->g:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 49
    .line 50
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 51
    .line 52
    const-string v1, "checking_resume_data"

    .line 53
    .line 54
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_status_checking_resume_data_get()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;-><init>(Ljava/lang/String;I)V

    .line 59
    .line 60
    .line 61
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->h:Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;

    .line 62
    .line 63
    const/4 v0, 0x0

    .line 64
    sput v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->i:I

    .line 65
    .line 66
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->i:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->i:I

    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->a:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->i:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/torrent_status$state_t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
