.class Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/client/googleapis/media/MediaHttpUploader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ContentChunk"
.end annotation


# instance fields
.field private final content:Lcom/google/api/client/http/AbstractInputStreamContent;

.field private final contentRange:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/api/client/http/AbstractInputStreamContent;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->content:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->contentRange:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getContent()Lcom/google/api/client/http/AbstractInputStreamContent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->content:Lcom/google/api/client/http/AbstractInputStreamContent;

    .line 2
    .line 3
    return-object v0
.end method

.method public getContentRange()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/api/client/googleapis/media/MediaHttpUploader$ContentChunk;->contentRange:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
