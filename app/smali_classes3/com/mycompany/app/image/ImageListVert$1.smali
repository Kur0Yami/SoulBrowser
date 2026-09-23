.class Lcom/mycompany/app/image/ImageListVert$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/image/ImageListVert;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/image/ImageListVert;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/image/ImageListVert$1;->a:Lcom/mycompany/app/image/ImageListVert;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/image/ImageListVert$1;->a:Lcom/mycompany/app/image/ImageListVert;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/image/ImageListVert;->R0:Lcom/mycompany/app/image/ImageScrollListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iput p1, v0, Lcom/mycompany/app/image/ImageListVert;->a1:I

    .line 9
    .line 10
    invoke-interface {v1, p1}, Lcom/mycompany/app/image/ImageScrollListener;->b(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final b(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/image/ImageListVert$1;->a:Lcom/mycompany/app/image/ImageListVert;

    .line 2
    .line 3
    iget p2, p1, Lcom/mycompany/app/image/ImageListVert;->a1:I

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/image/ImageListVert;->q0(Lcom/mycompany/app/image/ImageListVert;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
