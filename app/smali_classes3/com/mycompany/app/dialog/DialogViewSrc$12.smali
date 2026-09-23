.class Lcom/mycompany/app/dialog/DialogViewSrc$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogViewSrc;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewSrc;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewSrc$12;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewSrc$12;->a:Lcom/mycompany/app/dialog/DialogViewSrc;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    if-nez p2, :cond_2

    .line 12
    .line 13
    :goto_0
    return-object p2

    .line 14
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    invoke-virtual {p2, p1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {p1}, Landroidx/activity/i;->i(Landroid/graphics/Insets;)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    sget-boolean v1, Lcom/mycompany/app/main/MainConst;->d:Z

    .line 27
    .line 28
    if-eqz v1, :cond_3

    .line 29
    .line 30
    if-lez p1, :cond_3

    .line 31
    .line 32
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v1}, Landroidx/activity/i;->i(Landroid/graphics/Insets;)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    sub-int/2addr p1, v1

    .line 45
    :cond_3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewSrc;->J:Lcom/mycompany/app/view/MyMainRelative;

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    invoke-virtual {v0, v1, v1, v1, p1}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    :catch_0
    return-object p2
.end method
