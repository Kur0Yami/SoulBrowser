.class Lcom/mycompany/app/web/WebNestView$33;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$33;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$33;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->F2:Lcom/mycompany/app/web/WebNestFrame;

    .line 4
    .line 5
    iget-wide v3, v0, Lcom/mycompany/app/web/WebNestView;->G2:J

    .line 6
    .line 7
    iget-object v5, v0, Lcom/mycompany/app/web/WebNestView;->H2:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v6, v0, Lcom/mycompany/app/web/WebNestView;->I2:Landroid/os/Bundle;

    .line 10
    .line 11
    iget-object v8, v0, Lcom/mycompany/app/web/WebNestView;->J2:Lcom/mycompany/app/web/WebNestView$WebBundleListener;

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->F2:Lcom/mycompany/app/web/WebNestFrame;

    .line 15
    .line 16
    const-wide/16 v9, 0x0

    .line 17
    .line 18
    iput-wide v9, v0, Lcom/mycompany/app/web/WebNestView;->G2:J

    .line 19
    .line 20
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->H2:Ljava/lang/String;

    .line 21
    .line 22
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->I2:Landroid/os/Bundle;

    .line 23
    .line 24
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->J2:Lcom/mycompany/app/web/WebNestView$WebBundleListener;

    .line 25
    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/mycompany/app/web/WebNestFrame;->getListToStr()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    :cond_0
    move-object v7, v2

    .line 33
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-static/range {v2 .. v7}, Lcom/mycompany/app/db/book/DbTabState;->f(Landroid/content/Context;JLjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    if-eqz v8, :cond_1

    .line 41
    .line 42
    invoke-interface {v8}, Lcom/mycompany/app/web/WebNestView$WebBundleListener;->a()V

    .line 43
    .line 44
    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebNestView;->E2:Z

    .line 47
    .line 48
    return-void
.end method
