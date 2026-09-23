.class Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Z

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$20;ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 5
    .line 6
    iput-boolean p2, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->c:Z

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;->g:Lcom/mycompany/app/widget/WidgetSearchActivity$20;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$20;->a:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {v1}, Lcom/mycompany/app/main/MainUtil;->T4(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->y1:Z

    .line 12
    .line 13
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    new-instance v1, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1$1;

    .line 19
    .line 20
    invoke-direct {v1, p0}, Lcom/mycompany/app/widget/WidgetSearchActivity$20$1$1;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity$20$1;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 24
    .line 25
    .line 26
    return-void
.end method
