.class Lcom/mycompany/app/web/WebTabBarAdapter$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarAdapter$5;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarAdapter$5;->c:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 2
    .line 3
    iget v1, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->B:I

    .line 4
    .line 5
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->D:I

    .line 6
    .line 7
    if-ltz v1, :cond_0

    .line 8
    .line 9
    if-ge v1, v2, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->x(I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarAdapter;->e:Lcom/mycompany/app/view/MyRecyclerView;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    new-instance v1, Lcom/mycompany/app/web/WebTabBarAdapter$5$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/mycompany/app/web/WebTabBarAdapter$5$1;-><init>(Lcom/mycompany/app/web/WebTabBarAdapter$5;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method
