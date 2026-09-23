.class Landroidx/browser/customtabs/CustomTabsClient$3$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Ljava/lang/String;

.field public final synthetic f:Landroid/os/Bundle;

.field public final synthetic g:Landroidx/browser/customtabs/CustomTabsClient$3;


# direct methods
.method public constructor <init>(Landroidx/browser/customtabs/CustomTabsClient$3;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->g:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->c:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->f:Landroid/os/Bundle;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->g:Landroidx/browser/customtabs/CustomTabsClient$3;

    .line 2
    .line 3
    iget-object v0, v0, Landroidx/browser/customtabs/CustomTabsClient$3;->f:Landroidx/browser/customtabs/CustomTabsCallback;

    .line 4
    .line 5
    iget-object v1, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->c:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Landroidx/browser/customtabs/CustomTabsClient$3$2;->f:Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Landroidx/browser/customtabs/CustomTabsCallback;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
