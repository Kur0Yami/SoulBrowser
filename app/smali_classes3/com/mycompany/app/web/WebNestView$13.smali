.class Lcom/mycompany/app/web/WebNestView$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebNestView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebNestView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$13;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$13;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->J1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->J1:Ljava/lang/String;

    .line 7
    .line 8
    iget-boolean v3, v0, Lcom/mycompany/app/web/WebNestView;->e1:Z

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0, v2}, Lcom/mycompany/app/web/WebNestView;->G(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 17
    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    new-instance v2, Lcom/mycompany/app/web/WebCrashView;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 31
    .line 32
    new-instance v3, Lcom/mycompany/app/web/WebNestView$14;

    .line 33
    .line 34
    invoke-direct {v3, v0}, Lcom/mycompany/app/web/WebNestView$14;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3}, Lcom/mycompany/app/web/WebCrashView;->setListener(Lcom/mycompany/app/web/WebCrashView$CrashViewListener;)V

    .line 38
    .line 39
    .line 40
    iput-object v1, v0, Lcom/mycompany/app/web/WebNestView;->K1:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->f:Landroid/os/Handler;

    .line 43
    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    :goto_0
    return-void

    .line 47
    :cond_2
    new-instance v2, Lcom/mycompany/app/web/WebNestView$15;

    .line 48
    .line 49
    invoke-direct {v2, v0}, Lcom/mycompany/app/web/WebNestView$15;-><init>(Lcom/mycompany/app/web/WebNestView;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    .line 54
    .line 55
    return-void
.end method
