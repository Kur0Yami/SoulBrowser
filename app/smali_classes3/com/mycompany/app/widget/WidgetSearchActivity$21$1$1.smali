.class Lcom/mycompany/app/widget/WidgetSearchActivity$21$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$21;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$21;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 6
    .line 7
    iget-object v1, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->v1:Lcom/mycompany/app/web/WebSearchAdapter2;

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    iget-object v2, v1, Lcom/mycompany/app/web/WebSearchAdapter2;->c:Landroid/content/Context;

    .line 12
    .line 13
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    iget-object v3, v3, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lez v3, :cond_1

    .line 27
    .line 28
    invoke-static {v2}, Lcom/mycompany/app/data/book/DataBookRecent;->a(Landroid/content/Context;)Lcom/mycompany/app/data/book/DataBookRecent;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const/4 v3, 0x0

    .line 33
    iput-object v3, v2, Lcom/mycompany/app/data/book/DataBookRecent;->a:Ljava/util/List;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    iput-boolean v3, v2, Lcom/mycompany/app/data/book/DataBookRecent;->b:Z

    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$21;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/mycompany/app/widget/WidgetSearchActivity;->A0()V

    .line 44
    .line 45
    .line 46
    return-void
.end method
