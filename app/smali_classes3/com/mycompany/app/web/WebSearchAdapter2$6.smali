.class Lcom/mycompany/app/web/WebSearchAdapter2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$6;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/mycompany/app/web/WebSearchAdapter2;->a(Landroid/view/View;)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    new-instance v0, Lcom/mycompany/app/web/WebSearchAdapter2$6$1;

    .line 6
    .line 7
    invoke-direct {v0, p0, p1}, Lcom/mycompany/app/web/WebSearchAdapter2$6$1;-><init>(Lcom/mycompany/app/web/WebSearchAdapter2$6;I)V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$6;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/mycompany/app/web/WebSearchAdapter2;->g(Ljava/lang/Runnable;)V

    .line 13
    .line 14
    .line 15
    const/4 p1, 0x1

    .line 16
    return p1
.end method
