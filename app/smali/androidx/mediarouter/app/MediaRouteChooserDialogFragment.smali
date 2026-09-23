.class public Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "SourceFile"


# instance fields
.field public final c:Z

.field public f:Landroidx/appcompat/app/AppCompatDialog;

.field public g:Landroidx/mediarouter/media/MediaRouteSelector;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->c:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    invoke-virtual {p0, v0}, Landroidx/fragment/app/DialogFragment;->setCancelable(Z)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v1, "selector"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroidx/mediarouter/media/MediaRouteSelector;->b(Landroid/os/Bundle;)Landroidx/mediarouter/media/MediaRouteSelector;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 22
    .line 23
    :cond_0
    iget-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 24
    .line 25
    if-nez v0, :cond_1

    .line 26
    .line 27
    sget-object v0, Landroidx/mediarouter/media/MediaRouteSelector;->c:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 28
    .line 29
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 30
    .line 31
    :cond_1
    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    iget-boolean v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->c:Z

    .line 10
    .line 11
    const/4 v1, -0x2

    .line 12
    if-eqz v0, :cond_3

    .line 13
    .line 14
    check-cast p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    .line 15
    .line 16
    iget-object v0, p1, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->l:Landroid/content/Context;

    .line 17
    .line 18
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    sget v3, Landroidx/mediarouter/R$bool;->is_tablet:I

    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    const/4 v3, -0x1

    .line 29
    if-nez v2, :cond_1

    .line 30
    .line 31
    move v2, v3

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-static {v0}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->a(Landroid/content/Context;)I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    sget v4, Landroidx/mediarouter/R$bool;->is_tablet:I

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    if-nez v0, :cond_2

    .line 48
    .line 49
    move v1, v3

    .line 50
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1, v2, v1}, Landroid/view/Window;->setLayout(II)V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_3
    check-cast p1, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {p1}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-static {p1}, Landroidx/mediarouter/app/MediaRouteDialogHelper;->a(Landroid/content/Context;)I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-virtual {v0, p1, v1}, Landroid/view/Window;->setLayout(II)V

    .line 73
    .line 74
    .line 75
    return-void
.end method

.method public final onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 1
    iget-boolean p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->c:Z

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;

    .line 10
    .line 11
    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;-><init>(Landroid/content/Context;)V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 15
    .line 16
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 20
    .line 21
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteDynamicChooserDialog;->f(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    new-instance v0, Landroidx/mediarouter/app/MediaRouteChooserDialog;

    .line 30
    .line 31
    invoke-direct {v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;-><init>(Landroid/content/Context;)V

    .line 32
    .line 33
    .line 34
    iput-object v0, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g()V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->g:Landroidx/mediarouter/media/MediaRouteSelector;

    .line 40
    .line 41
    invoke-virtual {v0, p1}, Landroidx/mediarouter/app/MediaRouteChooserDialog;->g(Landroidx/mediarouter/media/MediaRouteSelector;)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Landroidx/mediarouter/app/MediaRouteChooserDialogFragment;->f:Landroidx/appcompat/app/AppCompatDialog;

    .line 45
    .line 46
    return-object p1
.end method
