.class Lcom/mycompany/app/web/WebNestView$16;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$16;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$16;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->L1:Ljava/lang/String;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->L1:Ljava/lang/String;

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
    if-nez v2, :cond_1

    .line 19
    .line 20
    return-void

    .line 21
    :cond_1
    invoke-virtual {v2, v1}, Lcom/mycompany/app/web/WebCrashView;->setCrashUrl(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 25
    .line 26
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebCrashView;->b()V

    .line 27
    .line 28
    .line 29
    iget-object v0, v0, Lcom/mycompany/app/web/WebNestView;->d1:Lcom/mycompany/app/web/WebCrashView;

    .line 30
    .line 31
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    return-void
.end method
