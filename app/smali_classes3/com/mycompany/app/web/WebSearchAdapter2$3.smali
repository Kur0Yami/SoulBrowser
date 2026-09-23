.class Lcom/mycompany/app/web/WebSearchAdapter2$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebSearchAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebSearchAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$3;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 10
    .line 11
    invoke-static {p1}, Lcom/mycompany/app/web/WebSearchAdapter2;->a(Landroid/view/View;)I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    new-instance v1, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;

    .line 16
    .line 17
    invoke-direct {v1, p0, p1}, Lcom/mycompany/app/web/WebSearchAdapter2$3$1;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2$3;I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/mycompany/app/web/WebSearchAdapter2;->g(Ljava/lang/Runnable;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
