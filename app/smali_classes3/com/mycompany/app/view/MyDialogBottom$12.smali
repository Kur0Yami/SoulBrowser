.class Lcom/mycompany/app/view/MyDialogBottom$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyDialogBottom;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyDialogBottom;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyDialogBottom$12;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    if-nez p2, :cond_1

    .line 5
    .line 6
    :goto_0
    return-object p2

    .line 7
    :cond_1
    :try_start_0
    sget-boolean v0, Lcom/mycompany/app/main/MainConst;->e:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    .line 9
    iget-object v1, p0, Lcom/mycompany/app/view/MyDialogBottom$12;->a:Lcom/mycompany/app/view/MyDialogBottom;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :try_start_1
    invoke-static {v1, p2}, Lcom/mycompany/app/view/MyDialogBottom;->c(Lcom/mycompany/app/view/MyDialogBottom;Landroid/view/WindowInsets;)V

    .line 14
    .line 15
    .line 16
    goto :goto_1

    .line 17
    :cond_2
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-static {v0}, Landroidx/activity/i;->i(Landroid/graphics/Insets;)I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sget-boolean v2, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    if-lez v0, :cond_3

    .line 34
    .line 35
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Landroidx/activity/i;->i(Landroid/graphics/Insets;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    sub-int/2addr v0, v2

    .line 48
    :cond_3
    const/4 v2, 0x0

    .line 49
    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/view/View;->setPadding(IIII)V

    .line 50
    .line 51
    .line 52
    :goto_1
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->Y:Lcom/mycompany/app/view/MyPopupWrap;

    .line 53
    .line 54
    if-nez p1, :cond_4

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_4
    iget-object p1, v1, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 58
    .line 59
    if-nez p1, :cond_5

    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_5
    new-instance v0, Lcom/mycompany/app/view/MyDialogBottom$20;

    .line 63
    .line 64
    invoke-direct {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom$20;-><init>(Lcom/mycompany/app/view/MyDialogBottom;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 68
    .line 69
    .line 70
    :catch_0
    :goto_2
    return-object p2
.end method
