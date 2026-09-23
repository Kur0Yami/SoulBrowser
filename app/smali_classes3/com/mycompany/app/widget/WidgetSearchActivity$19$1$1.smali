.class Lcom/mycompany/app/widget/WidgetSearchActivity$19$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity$19$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity$19$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$19$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$19$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$19$1$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$19$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$19$1;->c:Lcom/mycompany/app/widget/WidgetSearchActivity$19;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity$19;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 6
    .line 7
    iget-object v1, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->r1:Lcom/mycompany/app/view/MyEditAuto;

    .line 8
    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->f1:Landroid/content/Context;

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/mycompany/app/main/MainUtil;->c8(Landroid/content/Context;Landroid/view/View;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
