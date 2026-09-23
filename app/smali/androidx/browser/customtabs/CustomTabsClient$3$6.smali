.class Landroidx/browser/customtabs/CustomTabsClient$3$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Landroid/os/Bundle;

.field public final synthetic h:Landroidx/browser/customtabs/CustomTabsClient$3;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;IILandroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->h:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 5
    .line 6
    iput p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->c:I

    .line 7
    .line 8
    iput p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->f:I

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->g:Landroid/os/Bundle;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->h:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->f:I

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->g:Landroid/os/Bundle;

    .line 8
    .line 9
    iget v3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$6;->c:I

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->d(IILandroid/os/Bundle;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
