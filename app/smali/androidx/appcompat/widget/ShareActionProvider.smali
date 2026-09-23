.class public Landroidx/appcompat/widget/ShareActionProvider;
.super Landroidx/core/view/ActionProvider;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/widget/ShareActionProvider$ShareMenuItemOnMenuItemClickListener;,
        Landroidx/appcompat/widget/ShareActionProvider$OnShareTargetSelectedListener;,
        Landroidx/appcompat/widget/ShareActionProvider$ShareActivityChooserModelPolicy;
    }
.end annotation


# virtual methods
.method public final c()Landroid/view/View;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/widget/ActivityChooserView;

    .line 2
    .line 3
    invoke-direct {v0}, Landroidx/appcompat/widget/ActivityChooserView;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    throw v0
.end method

.method public final f(Landroidx/appcompat/view/menu/SubMenuBuilder;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Landroidx/appcompat/widget/ActivityChooserModel;->c()Landroidx/appcompat/widget/ActivityChooserModel;

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    throw p1
.end method
