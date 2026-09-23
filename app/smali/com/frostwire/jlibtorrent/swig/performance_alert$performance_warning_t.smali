.class public final Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/frostwire/jlibtorrent/swig/performance_alert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "performance_warning_t"
.end annotation


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final f:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final g:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final h:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final i:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final j:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final k:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static final l:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

.field public static m:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 2
    .line 3
    const-string v1, "outstanding_disk_buffer_limit_reached"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->c:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 9
    .line 10
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 11
    .line 12
    const-string v1, "outstanding_request_limit_reached"

    .line 13
    .line 14
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->d:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 18
    .line 19
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 20
    .line 21
    const-string v1, "upload_limit_too_low"

    .line 22
    .line 23
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->e:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 27
    .line 28
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 29
    .line 30
    const-string v1, "download_limit_too_low"

    .line 31
    .line 32
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->f:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 36
    .line 37
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 38
    .line 39
    const-string v1, "send_buffer_watermark_too_low"

    .line 40
    .line 41
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->g:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 45
    .line 46
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 47
    .line 48
    const-string v1, "too_many_optimistic_unchoke_slots"

    .line 49
    .line 50
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->h:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 54
    .line 55
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 56
    .line 57
    const-string v1, "too_high_disk_queue_limit"

    .line 58
    .line 59
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->i:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 63
    .line 64
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 65
    .line 66
    const-string v1, "aio_limit_reached"

    .line 67
    .line 68
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 72
    .line 73
    invoke-static {}, Lcom/frostwire/jlibtorrent/swig/libtorrent_jni;->performance_alert_too_few_outgoing_ports_get()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(I)V

    .line 78
    .line 79
    .line 80
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->j:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 81
    .line 82
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 83
    .line 84
    const-string v1, "too_few_file_descriptors"

    .line 85
    .line 86
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->k:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 90
    .line 91
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 92
    .line 93
    const-string v1, "num_warnings"

    .line 94
    .line 95
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;-><init>(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->l:Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;

    .line 99
    .line 100
    const/4 v0, 0x0

    .line 101
    sput v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->m:I

    .line 102
    .line 103
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    const-string v0, "too_few_outgoing_ports"

    iput-object v0, p0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->b:Ljava/lang/String;

    .line 6
    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    add-int/lit8 p1, p1, 0x1

    .line 7
    sput p1, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->m:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->b:Ljava/lang/String;

    .line 3
    sget p1, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->m:I

    add-int/lit8 v0, p1, 0x1

    sput v0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->m:I

    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->a:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/performance_alert$performance_warning_t;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
