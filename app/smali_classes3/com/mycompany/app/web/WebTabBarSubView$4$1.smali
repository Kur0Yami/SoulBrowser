.class Lcom/mycompany/app/web/WebTabBarSubView$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebTabBarSubView$4;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebTabBarSubView$4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebTabBarSubView$4$1;->c:Lcom/mycompany/app/web/WebTabBarSubView$4;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebTabBarSubView$4$1;->c:Lcom/mycompany/app/web/WebTabBarSubView$4;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/web/WebTabBarSubView$4;->a:Lcom/mycompany/app/web/WebTabBarSubView;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->F:Z

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->F:Z

    .line 12
    .line 13
    iget-object v1, v0, Lcom/mycompany/app/web/WebTabBarSubView;->t:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    :goto_0
    return-void

    .line 18
    :cond_1
    iget v2, v0, Lcom/mycompany/app/web/WebTabBarSubView;->G:I

    .line 19
    .line 20
    iget v3, v0, Lcom/mycompany/app/web/WebTabBarSubView;->H:I

    .line 21
    .line 22
    if-eq v2, v3, :cond_2

    .line 23
    .line 24
    iget-object v1, v1, Lcom/mycompany/app/web/WebTabBarAdapter;->i:Ljava/util/ArrayList;

    .line 25
    .line 26
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebTabBarSubView;->c(Lcom/mycompany/app/web/WebTabBarSubView;Ljava/util/ArrayList;)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0, v1}, Lcom/mycompany/app/web/WebTabBarSubView;->b(Lcom/mycompany/app/web/WebTabBarSubView;Ljava/util/ArrayList;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :cond_2
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebTabBarAdapter;->w()V

    .line 34
    .line 35
    .line 36
    return-void
.end method
