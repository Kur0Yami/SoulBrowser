.class public final Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/stats_alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "stats_channel"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

.field public static j:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 2
    .line 3
    const-string v1, "upload_payload"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->c:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 11
    .line 12
    const-string v1, "upload_protocol"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->d:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 18
    .line 19
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 20
    .line 21
    const-string v1, "download_payload"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->e:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 27
    .line 28
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 29
    .line 30
    const-string v1, "download_protocol"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->f:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 36
    .line 37
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 38
    .line 39
    const-string v1, "upload_ip_protocol"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->g:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 45
    .line 46
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 47
    .line 48
    const-string v1, "download_ip_protocol"

    .line 49
    .line 50
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->stats_alert_download_ip_protocol_get()I

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->h:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 58
    .line 59
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 60
    .line 61
    const-string v1, "num_channels"

    .line 62
    .line 63
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->stats_alert_num_channels_get()I

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    invoke-direct {v0, v1, v2}, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;-><init>(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->i:Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;

    .line 71
    .line 72
    const/4 v0, 0x0

    .line 73
    sput v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->j:I

    .line 74
    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->j:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->j:I

    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->a:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->b:Ljava/lang/String;

    .line 6
    iput p2, p0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->a:I

    add-int/lit8 p2, p2, 0x1

    .line 7
    sput p2, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->j:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/stats_alert$stats_channel;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
