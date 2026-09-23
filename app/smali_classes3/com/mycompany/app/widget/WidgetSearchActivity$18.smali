.class Lcom/mycompany/app/widget/WidgetSearchActivity$18;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$18;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$18;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->a0()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainActivity;->c0()Landroidx/core/view/WindowInsetsControllerCompat;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 16
    .line 17
    invoke-static {v1, v2, v0, v3, v3}, Lcom/mycompany/app/main/MainUtil;->E7(Landroid/view/Window;Landroid/view/View;Landroidx/core/view/WindowInsetsControllerCompat;ZZ)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
