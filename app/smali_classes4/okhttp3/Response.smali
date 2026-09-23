.class public final Lokhttp3/Response;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/Response$Builder;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lokhttp3/Response;",
        "Ljava/io/Closeable;",
        "Builder",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x2,
        0x2,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public final c:Lokhttp3/Request;

.field public final f:Lokhttp3/Protocol;

.field public final g:Ljava/lang/String;

.field public final h:I

.field public final i:Lokhttp3/Handshake;

.field public final j:Lokhttp3/Headers;

.field public final k:Lokhttp3/ResponseBody;

.field public final l:Lokio/Socket;

.field public final m:Lokhttp3/Response;

.field public final n:Lokhttp3/Response;

.field public final o:Lokhttp3/Response;

.field public final p:J

.field public final q:J

.field public final r:Lokhttp3/internal/connection/Exchange;

.field public final s:Lokhttp3/TrailersSource;


# direct methods
.method public constructor <init>(Lokhttp3/Request;Lokhttp3/Protocol;Ljava/lang/String;ILokhttp3/Handshake;Lokhttp3/Headers;Lokhttp3/ResponseBody;Lokio/Socket;Lokhttp3/Response;Lokhttp3/Response;Lokhttp3/Response;JJLokhttp3/internal/connection/Exchange;Lokhttp3/TrailersSource;)V
    .locals 2

    .line 1
    move-object/from16 v0, p17

    .line 2
    .line 3
    const-string v1, "request"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "protocol"

    .line 9
    .line 10
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    const-string v1, "message"

    .line 14
    .line 15
    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const-string v1, "headers"

    .line 19
    .line 20
    invoke-static {p6, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const-string v1, "body"

    .line 24
    .line 25
    invoke-static {p7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const-string v1, "trailersSource"

    .line 29
    .line 30
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object p1, p0, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 37
    .line 38
    iput-object p2, p0, Lokhttp3/Response;->f:Lokhttp3/Protocol;

    .line 39
    .line 40
    iput-object p3, p0, Lokhttp3/Response;->g:Ljava/lang/String;

    .line 41
    .line 42
    iput p4, p0, Lokhttp3/Response;->h:I

    .line 43
    .line 44
    iput-object p5, p0, Lokhttp3/Response;->i:Lokhttp3/Handshake;

    .line 45
    .line 46
    iput-object p6, p0, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 47
    .line 48
    iput-object p7, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 49
    .line 50
    iput-object p8, p0, Lokhttp3/Response;->l:Lokio/Socket;

    .line 51
    .line 52
    iput-object p9, p0, Lokhttp3/Response;->m:Lokhttp3/Response;

    .line 53
    .line 54
    iput-object p10, p0, Lokhttp3/Response;->n:Lokhttp3/Response;

    .line 55
    .line 56
    iput-object p11, p0, Lokhttp3/Response;->o:Lokhttp3/Response;

    .line 57
    .line 58
    iput-wide p12, p0, Lokhttp3/Response;->p:J

    .line 59
    .line 60
    move-wide/from16 p1, p14

    .line 61
    .line 62
    iput-wide p1, p0, Lokhttp3/Response;->q:J

    .line 63
    .line 64
    move-object/from16 p1, p16

    .line 65
    .line 66
    iput-object p1, p0, Lokhttp3/Response;->r:Lokhttp3/internal/connection/Exchange;

    .line 67
    .line 68
    iput-object v0, p0, Lokhttp3/Response;->s:Lokhttp3/TrailersSource;

    .line 69
    .line 70
    return-void
.end method

.method public static a(Ljava/lang/String;Lokhttp3/Response;)Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p1, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Lokhttp3/Headers;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    const/4 p0, 0x0

    .line 15
    :cond_0
    return-object p0
.end method


# virtual methods
.method public final b()Lokhttp3/Response$Builder;
    .locals 3

    .line 1
    new-instance v0, Lokhttp3/Response$Builder;

    .line 2
    .line 3
    const-string v1, "response"

    .line 4
    .line 5
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v1, -0x1

    .line 12
    iput v1, v0, Lokhttp3/Response$Builder;->c:I

    .line 13
    .line 14
    sget-object v1, Lokhttp3/ResponseBody;->c:Lokhttp3/ResponseBody$Companion$asResponseBody$1;

    .line 15
    .line 16
    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 17
    .line 18
    sget-object v1, Lokhttp3/TrailersSource;->a:Lokhttp3/TrailersSource$Companion$EMPTY$1;

    .line 19
    .line 20
    iput-object v1, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 21
    .line 22
    iget-object v1, p0, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 23
    .line 24
    iput-object v1, v0, Lokhttp3/Response$Builder;->a:Lokhttp3/Request;

    .line 25
    .line 26
    iget-object v1, p0, Lokhttp3/Response;->f:Lokhttp3/Protocol;

    .line 27
    .line 28
    iput-object v1, v0, Lokhttp3/Response$Builder;->b:Lokhttp3/Protocol;

    .line 29
    .line 30
    iget v1, p0, Lokhttp3/Response;->h:I

    .line 31
    .line 32
    iput v1, v0, Lokhttp3/Response$Builder;->c:I

    .line 33
    .line 34
    iget-object v1, p0, Lokhttp3/Response;->g:Ljava/lang/String;

    .line 35
    .line 36
    iput-object v1, v0, Lokhttp3/Response$Builder;->d:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/Response;->i:Lokhttp3/Handshake;

    .line 39
    .line 40
    iput-object v1, v0, Lokhttp3/Response$Builder;->e:Lokhttp3/Handshake;

    .line 41
    .line 42
    iget-object v1, p0, Lokhttp3/Response;->j:Lokhttp3/Headers;

    .line 43
    .line 44
    invoke-virtual {v1}, Lokhttp3/Headers;->g()Lokhttp3/Headers$Builder;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    iput-object v1, v0, Lokhttp3/Response$Builder;->f:Lokhttp3/Headers$Builder;

    .line 49
    .line 50
    iget-object v1, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 51
    .line 52
    iput-object v1, v0, Lokhttp3/Response$Builder;->g:Lokhttp3/ResponseBody;

    .line 53
    .line 54
    iget-object v1, p0, Lokhttp3/Response;->l:Lokio/Socket;

    .line 55
    .line 56
    iput-object v1, v0, Lokhttp3/Response$Builder;->h:Lokio/Socket;

    .line 57
    .line 58
    iget-object v1, p0, Lokhttp3/Response;->m:Lokhttp3/Response;

    .line 59
    .line 60
    iput-object v1, v0, Lokhttp3/Response$Builder;->i:Lokhttp3/Response;

    .line 61
    .line 62
    iget-object v1, p0, Lokhttp3/Response;->n:Lokhttp3/Response;

    .line 63
    .line 64
    iput-object v1, v0, Lokhttp3/Response$Builder;->j:Lokhttp3/Response;

    .line 65
    .line 66
    iget-object v1, p0, Lokhttp3/Response;->o:Lokhttp3/Response;

    .line 67
    .line 68
    iput-object v1, v0, Lokhttp3/Response$Builder;->k:Lokhttp3/Response;

    .line 69
    .line 70
    iget-wide v1, p0, Lokhttp3/Response;->p:J

    .line 71
    .line 72
    iput-wide v1, v0, Lokhttp3/Response$Builder;->l:J

    .line 73
    .line 74
    iget-wide v1, p0, Lokhttp3/Response;->q:J

    .line 75
    .line 76
    iput-wide v1, v0, Lokhttp3/Response$Builder;->m:J

    .line 77
    .line 78
    iget-object v1, p0, Lokhttp3/Response;->r:Lokhttp3/internal/connection/Exchange;

    .line 79
    .line 80
    iput-object v1, v0, Lokhttp3/Response$Builder;->n:Lokhttp3/internal/connection/Exchange;

    .line 81
    .line 82
    iget-object v1, p0, Lokhttp3/Response;->s:Lokhttp3/TrailersSource;

    .line 83
    .line 84
    iput-object v1, v0, Lokhttp3/Response$Builder;->o:Lokhttp3/TrailersSource;

    .line 85
    .line 86
    return-object v0
.end method

.method public final close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lokhttp3/Response;->k:Lokhttp3/ResponseBody;

    .line 2
    .line 3
    invoke-virtual {v0}, Lokhttp3/ResponseBody;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Response{protocol="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lokhttp3/Response;->f:Lokhttp3/Protocol;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", code="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lokhttp3/Response;->h:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", message="

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lokhttp3/Response;->g:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", url="

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lokhttp3/Response;->c:Lokhttp3/Request;

    .line 39
    .line 40
    iget-object v1, v1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    const/16 v1, 0x7d

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method
