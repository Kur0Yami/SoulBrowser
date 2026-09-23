.class Lcom/mycompany/app/widget/WidgetSearchActivity$17;
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
    iput-object p1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$17;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    sget v0, Lcom/mycompany/app/widget/WidgetSearchActivity;->I1:I

    .line 2
    .line 3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    iget-object v1, p0, Lcom/mycompany/app/widget/WidgetSearchActivity$17;->c:Lcom/mycompany/app/widget/WidgetSearchActivity;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    sget-boolean v3, Lcom/mycompany/app/main/MainConst;->e:Z

    .line 15
    .line 16
    if-nez v3, :cond_5

    .line 17
    .line 18
    sget-boolean v3, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 19
    .line 20
    const/4 v4, -0x1

    .line 21
    const/high16 v5, -0x1000000

    .line 22
    .line 23
    if-eqz v3, :cond_1

    .line 24
    .line 25
    move v3, v5

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move v3, v4

    .line 28
    :goto_0
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->x3(Landroid/view/Window;)I

    .line 29
    .line 30
    .line 31
    move-result v6

    .line 32
    if-eq v6, v3, :cond_2

    .line 33
    .line 34
    invoke-static {v2, v3}, Lcom/mycompany/app/main/MainUtil;->D7(Landroid/view/Window;I)V

    .line 35
    .line 36
    .line 37
    :cond_2
    const/16 v3, 0x1a

    .line 38
    .line 39
    if-lt v0, v3, :cond_4

    .line 40
    .line 41
    sget-boolean v0, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    if-eqz v0, :cond_3

    .line 44
    .line 45
    move v4, v5

    .line 46
    :cond_3
    move v5, v4

    .line 47
    :cond_4
    invoke-static {v2}, Lcom/mycompany/app/main/MainUtil;->O2(Landroid/view/Window;)I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eq v0, v5, :cond_5

    .line 52
    .line 53
    invoke-static {v2, v5}, Lcom/mycompany/app/main/MainUtil;->t7(Landroid/view/Window;I)V

    .line 54
    .line 55
    .line 56
    :cond_5
    iget-object v0, v1, Lcom/mycompany/app/main/MainActivity;->O0:Landroid/os/Handler;

    .line 57
    .line 58
    if-nez v0, :cond_6

    .line 59
    .line 60
    :goto_1
    return-void

    .line 61
    :cond_6
    new-instance v2, Lcom/mycompany/app/widget/WidgetSearchActivity$18;

    .line 62
    .line 63
    invoke-direct {v2, v1}, Lcom/mycompany/app/widget/WidgetSearchActivity$18;-><init>(Lcom/mycompany/app/widget/WidgetSearchActivity;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 67
    .line 68
    .line 69
    return-void
.end method
