.class Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$21;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$21;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$21;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$21;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$21;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    sget-boolean v2, Lcom/mycompany/app/pref/PrefSync;->k:Z

    .line 8
    .line 9
    invoke-static {v1, v2}, Lcom/mycompany/app/db/book/DbBookRecent;->j(Landroid/content/Context;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1$1;

    .line 18
    .line 19
    invoke-direct {v1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$21$1$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity$21$1;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method
