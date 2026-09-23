.class public final Lcom/frostwire/jlibtorrent/swig/portmap_protocol;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

.field public static final d:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

.field public static final e:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

.field public static final f:[Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

.field public static g:I


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 2
    .line 3
    const-string v1, "none"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->c:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 9
    .line 10
    new-instance v1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 11
    .line 12
    const-string v2, "tcp"

    .line 13
    .line 14
    invoke-direct {v1, v2}, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->d:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 18
    .line 19
    new-instance v2, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 20
    .line 21
    const-string v3, "udp"

    .line 22
    .line 23
    invoke-direct {v2, v3}, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    sput-object v2, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->e:Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 27
    .line 28
    const/4 v3, 0x3

    .line 29
    new-array v3, v3, [Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 30
    .line 31
    const/4 v4, 0x0

    .line 32
    aput-object v0, v3, v4

    .line 33
    .line 34
    const/4 v0, 0x1

    .line 35
    aput-object v1, v3, v0

    .line 36
    .line 37
    const/4 v0, 0x2

    .line 38
    aput-object v2, v3, v0

    .line 39
    .line 40
    sput-object v3, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->f:[Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 41
    .line 42
    sput v4, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->g:I

    .line 43
    .line 44
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->b:Ljava/lang/String;

    .line 5
    .line 6
    sget p1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->g:I

    .line 7
    .line 8
    add-int/lit8 v0, p1, 0x1

    .line 9
    .line 10
    sput v0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->g:I

    .line 11
    .line 12
    iput p1, p0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 13
    .line 14
    return-void
.end method

.method public static a(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->f:[Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    if-ge p0, v1, :cond_0

    .line 5
    .line 6
    if-ltz p0, :cond_0

    .line 7
    .line 8
    aget-object v1, v0, p0

    .line 9
    .line 10
    iget v1, v1, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 11
    .line 12
    if-ne v1, p0, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    const/4 v1, 0x0

    .line 16
    :goto_0
    array-length v2, v0

    .line 17
    if-ge v1, v2, :cond_2

    .line 18
    .line 19
    aget-object v2, v0, v1

    .line 20
    .line 21
    iget v2, v2, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->a:I

    .line 22
    .line 23
    if-ne v2, p0, :cond_1

    .line 24
    .line 25
    :goto_1
    return-void

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 30
    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    const-string v2, "No enum "

    .line 34
    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const-class v2, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v2, " with value "

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/frostwire/jlibtorrent/swig/portmap_protocol;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
