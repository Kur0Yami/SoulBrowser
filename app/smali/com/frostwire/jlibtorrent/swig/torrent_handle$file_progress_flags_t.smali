.class public final Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/torrent_handle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "file_progress_flags_t"
.end annotation


# static fields
.field public static final b:Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;


# instance fields
.field public final a:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;

    .line 2
    .line 3
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->torrent_handle_piece_granularity_get()I

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;-><init>(I)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;->b:Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/torrent_handle$file_progress_flags_t;->a:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "piece_granularity"

    .line 2
    .line 3
    return-object v0
.end method
