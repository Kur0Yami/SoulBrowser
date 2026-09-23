.class Lcom/mycompany/app/web/WebTabBarAdapter$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/web/WebTabBarAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarAdapter;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->g:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->g:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->c:I

    .line 9
    .line 10
    iget v2, p0, Lcom/mycompany/app/web/WebTabBarAdapter$9;->f:I

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->k(II)V

    .line 13
    .line 14
    .line 15
    return-void
.end method
