.class Lcom/mycompany/app/quick/TabSubView$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/quick/TabDragHelper$TabDragListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/quick/TabSubView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/TabSubView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 3
    .line 4
    const/4 v2, 0x1

    .line 5
    if-ne p1, v2, :cond_0

    .line 6
    .line 7
    sget-boolean p1, Lcom/mycompany/app/pref/PrefZone;->E:Z

    .line 8
    .line 9
    iput-boolean p1, v1, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 10
    .line 11
    iput-boolean v0, v1, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v3, 0x2

    .line 15
    if-ne p1, v3, :cond_1

    .line 16
    .line 17
    iput-boolean v0, v1, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 18
    .line 19
    iput-boolean v2, v1, Lcom/mycompany/app/quick/TabSubView;->P:Z

    .line 20
    .line 21
    return-void

    .line 22
    :cond_1
    if-nez p1, :cond_3

    .line 23
    .line 24
    iget-object p1, v1, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 25
    .line 26
    if-eqz p1, :cond_3

    .line 27
    .line 28
    iget-object p1, v1, Lcom/mycompany/app/quick/TabSubView;->g:Lcom/mycompany/app/quick/TabSubView$TabSubListener;

    .line 29
    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    new-instance p1, Lcom/mycompany/app/quick/TabSubView$14$1;

    .line 34
    .line 35
    invoke-direct {p1, p0}, Lcom/mycompany/app/quick/TabSubView$14$1;-><init>(Lcom/mycompany/app/quick/TabSubView$14;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 39
    .line 40
    .line 41
    :cond_3
    :goto_0
    return-void
.end method

.method public final b(II)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/quick/TabSubView;->D:Lcom/mycompany/app/web/WebTabAdapter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/mycompany/app/web/WebTabAdapter;->S(II)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public final c(II)V
    .locals 0

    .line 1
    return-void
.end method

.method public final d(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, v0, Lcom/mycompany/app/quick/TabSubView;->K:Z

    .line 9
    .line 10
    invoke-static {v0, p1}, Lcom/mycompany/app/quick/TabSubView;->e(Lcom/mycompany/app/quick/TabSubView;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public final e(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/TabSubView$14;->a:Lcom/mycompany/app/quick/TabSubView;

    .line 2
    .line 3
    iput p1, v0, Lcom/mycompany/app/quick/TabSubView;->L:I

    .line 4
    .line 5
    return-void
.end method
