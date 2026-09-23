.class Lcom/mycompany/app/image/ImageListHori$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/image/ImageListHori;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageListHori;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListHori$2;->f:Lcom/mycompany/app/image/ImageListHori;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/image/ImageListHori$2;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListHori$2;->f:Lcom/mycompany/app/image/ImageListHori;

    .line 2
    .line 3
    iget v1, p0, Lcom/mycompany/app/image/ImageListHori$2;->c:I

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/mycompany/app/image/ImageListHori;->r0(Lcom/mycompany/app/image/ImageListHori;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
