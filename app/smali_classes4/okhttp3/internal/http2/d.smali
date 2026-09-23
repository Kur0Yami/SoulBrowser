.class public final synthetic Lokhttp3/internal/http2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lokhttp3/internal/http2/Http2Connection;

.field public final synthetic g:I

.field public final synthetic h:Lokhttp3/internal/http2/ErrorCode;


# direct methods
.method public synthetic constructor <init>(Lokhttp3/internal/http2/Http2Connection;ILokhttp3/internal/http2/ErrorCode;I)V
    .locals 0

    .line 1
    iput p4, p0, Lokhttp3/internal/http2/d;->c:I

    iput-object p1, p0, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/Http2Connection;

    iput p2, p0, Lokhttp3/internal/http2/d;->g:I

    iput-object p3, p0, Lokhttp3/internal/http2/d;->h:Lokhttp3/internal/http2/ErrorCode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget v0, p0, Lokhttp3/internal/http2/d;->c:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 7
    .line 8
    iget v1, p0, Lokhttp3/internal/http2/d;->g:I

    .line 9
    .line 10
    iget-object v2, p0, Lokhttp3/internal/http2/d;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 11
    .line 12
    sget-object v3, Lokhttp3/internal/http2/Http2Connection;->D:Lokhttp3/internal/http2/Settings;

    .line 13
    .line 14
    :try_start_0
    const-string v3, "statusCode"

    .line 15
    .line 16
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->A:Lokhttp3/internal/http2/Http2Writer;

    .line 20
    .line 21
    invoke-virtual {v3, v1, v2}, Lokhttp3/internal/http2/Http2Writer;->j(ILokhttp3/internal/http2/ErrorCode;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception v1

    .line 26
    sget-object v2, Lokhttp3/internal/http2/ErrorCode;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 27
    .line 28
    invoke-virtual {v0, v2, v2, v1}, Lokhttp3/internal/http2/Http2Connection;->a(Lokhttp3/internal/http2/ErrorCode;Lokhttp3/internal/http2/ErrorCode;Ljava/io/IOException;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 32
    .line 33
    return-object v0

    .line 34
    :pswitch_0
    iget-object v0, p0, Lokhttp3/internal/http2/d;->f:Lokhttp3/internal/http2/Http2Connection;

    .line 35
    .line 36
    iget v1, p0, Lokhttp3/internal/http2/d;->g:I

    .line 37
    .line 38
    iget-object v2, p0, Lokhttp3/internal/http2/d;->h:Lokhttp3/internal/http2/ErrorCode;

    .line 39
    .line 40
    iget-object v3, v0, Lokhttp3/internal/http2/Http2Connection;->o:Lokhttp3/internal/http2/PushObserver;

    .line 41
    .line 42
    check-cast v3, Lokhttp3/internal/http2/PushObserver$Companion$PushObserverCancel;

    .line 43
    .line 44
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    const-string v3, "errorCode"

    .line 48
    .line 49
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    monitor-enter v0

    .line 53
    :try_start_1
    iget-object v2, v0, Lokhttp3/internal/http2/Http2Connection;->C:Ljava/util/LinkedHashSet;

    .line 54
    .line 55
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    .line 61
    .line 62
    monitor-exit v0

    .line 63
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 64
    .line 65
    return-object v0

    .line 66
    :catchall_0
    move-exception v1

    .line 67
    monitor-exit v0

    .line 68
    throw v1

    .line 69
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
