.class Lcom/mycompany/app/widget/WidgetSearchActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/widget/WidgetSearchActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$6;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$6;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    iget-object v0, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    iput-object v2, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyEngineMenu;->a()V

    .line 14
    .line 15
    .line 16
    iput-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 17
    .line 18
    :cond_1
    if-nez p1, :cond_2

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_2
    new-instance v0, Lcom/mycompany/app/view/MyEngineMenu;

    .line 22
    .line 23
    iget-object v2, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->l1:Landroid/widget/FrameLayout;

    .line 24
    .line 25
    sget-boolean v4, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 26
    .line 27
    new-instance v5, Lcom/mycompany/app/widget/WidgetSearchActivity$23;

    .line 28
    .line 29
    invoke-direct {v5, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$23;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 30
    .line 31
    .line 32
    move-object v3, p1

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/view/MyEngineMenu;-><init>(Lcom/mycompany/app/main/MainActivity;Landroid/view/View;Landroid/view/View;ZLcom/mycompany/app/view/MyEngineMenu$MyEngineListener;)V

    .line 34
    .line 35
    .line 36
    iput-object v0, v1, Lcom/mycompany/app/widget/WidgetSearchActivity;->A1:Lcom/mycompany/app/view/MyEngineMenu;

    .line 37
    .line 38
    iput-object v0, v1, Lcom/mycompany/app/main/MainActivity;->Z0:Lcom/mycompany/app/view/MyPopupWrap;

    .line 39
    .line 40
    return-void
.end method
