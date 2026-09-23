.class Lcom/mycompany/app/web/WebNestView$24;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebNestView$24;->c:Lcom/mycompany/app/web/WebNestView;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->t:Landroidx/core/view/NestedScrollingChildHelper;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebNestView;->e2:Ljava/lang/String;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v0, Lcom/mycompany/app/web/WebNestView;->e2:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v2, Lcom/mycompany/app/web/WebNestView$24$1;

    .line 14
    .line 15
    invoke-direct {v2, p0}, Lcom/mycompany/app/web/WebNestView$24$1;-><init>(Lcom/mycompany/app/web/WebNestView$24;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1, v2}, Lcom/mycompany/app/web/WebNestView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
