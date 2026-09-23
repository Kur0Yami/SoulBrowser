.class Lcom/mycompany/app/web/WebSearchAdapter2$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/web/WebSearchAdapter2$9;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebSearchAdapter2$9;->c:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->A:Ljava/util/ArrayList;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v3, v2

    .line 19
    :goto_0
    iget-boolean v4, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->r:Z

    .line 20
    .line 21
    if-eqz v4, :cond_2

    .line 22
    .line 23
    add-int/lit8 v4, v3, -0x1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_2
    const/4 v4, -0x1

    .line 27
    :goto_1
    iput-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->o:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 30
    .line 31
    .line 32
    iget-object v1, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->f:Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;

    .line 33
    .line 34
    if-eqz v3, :cond_3

    .line 35
    .line 36
    const/4 v3, 0x1

    .line 37
    goto :goto_2

    .line 38
    :cond_3
    move v3, v2

    .line 39
    :goto_2
    invoke-interface {v1, v4, v3}, Lcom/mycompany/app/web/WebSearchAdapter$WebSearchListener;->a(IZ)V

    .line 40
    .line 41
    .line 42
    iput-boolean v2, v0, Lcom/mycompany/app/web/WebSearchAdapter2;->u:Z

    .line 43
    .line 44
    return-void
.end method
