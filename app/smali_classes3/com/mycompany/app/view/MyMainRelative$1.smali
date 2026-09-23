.class Lcom/mycompany/app/view/MyMainRelative$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mycompany/app/view/MyMainRelative;->setWindow(Landroid/view/Window;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyMainRelative;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyMainRelative;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyMainRelative$1;->c:Lcom/mycompany/app/view/MyMainRelative;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyMainRelative$1;->c:Lcom/mycompany/app/view/MyMainRelative;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyMainRelative;->l:Landroid/view/Window;

    .line 4
    .line 5
    iget-boolean v2, v0, Lcom/mycompany/app/view/MyMainRelative;->m:Z

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    iput-object v3, v0, Lcom/mycompany/app/view/MyMainRelative;->l:Landroid/view/Window;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v3, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 14
    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    iput-object v3, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 23
    .line 24
    :goto_0
    iget-object v4, v0, Lcom/mycompany/app/view/MyMainRelative;->g:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 25
    .line 26
    if-nez v4, :cond_3

    .line 27
    .line 28
    iget-object v4, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 29
    .line 30
    if-eqz v4, :cond_2

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_2
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    iput-object v4, v0, Lcom/mycompany/app/view/MyMainRelative;->f:Landroid/view/View;

    .line 38
    .line 39
    :goto_1
    invoke-static {v1, v4}, Lcom/mycompany/app/main/MainUtil;->r4(Landroid/view/Window;Landroid/view/View;)Landroidx/core/view/WindowInsetsControllerCompat;

    .line 40
    .line 41
    .line 42
    move-result-object v4

    .line 43
    iput-object v4, v0, Lcom/mycompany/app/view/MyMainRelative;->g:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 44
    .line 45
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/view/MyMainRelative;->g:Landroidx/core/view/WindowInsetsControllerCompat;

    .line 46
    .line 47
    invoke-static {v1, v3, v0, v2, v2}, Lcom/mycompany/app/main/MainUtil;->E7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 48
    .line 49
    .line 50
    return-void
.end method
