.class Lcom/mycompany/app/quick/QuickSearch$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickSearch;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickSearch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickSearch$4;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickSearch$4;->c:Lcom/mycompany/app/quick/QuickSearch;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 9
    .line 10
    if-nez v1, :cond_1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_1
    iget-object v2, v0, Lcom/mycompany/app/quick/QuickSearch;->f:Lcom/mycompany/app/web/WebViewActivity;

    .line 14
    .line 15
    iget-boolean v3, v0, Lcom/mycompany/app/quick/QuickSearch;->i:Z

    .line 16
    .line 17
    iget-boolean v4, v0, Lcom/mycompany/app/quick/QuickSearch;->m:Z

    .line 18
    .line 19
    new-instance v5, Lcom/mycompany/app/quick/QuickSearch$5;

    .line 20
    .line 21
    invoke-direct {v5, v0}, Lcom/mycompany/app/quick/QuickSearch$5;-><init>(Lcom/mycompany/app/quick/QuickSearch;)V

    .line 22
    .line 23
    .line 24
    iput-object v2, v1, Lcom/mycompany/app/view/MyClipView;->c:Landroid/content/Context;

    .line 25
    .line 26
    iput-boolean v3, v1, Lcom/mycompany/app/view/MyClipView;->f:Z

    .line 27
    .line 28
    const/4 v2, 0x1

    .line 29
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyClipView;->g:Z

    .line 30
    .line 31
    invoke-static {}, Lcom/mycompany/app/main/MainUtil;->U4()Z

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyClipView;->h:Z

    .line 36
    .line 37
    sget-boolean v2, Lcom/mycompany/app/pref/PrefWeb;->U:Z

    .line 38
    .line 39
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyClipView;->i:Z

    .line 40
    .line 41
    sget-boolean v2, Lcom/mycompany/app/main/MainApp;->K1:Z

    .line 42
    .line 43
    iput-boolean v2, v1, Lcom/mycompany/app/view/MyClipView;->j:Z

    .line 44
    .line 45
    iput-boolean v4, v1, Lcom/mycompany/app/view/MyClipView;->k:Z

    .line 46
    .line 47
    iput-object v5, v1, Lcom/mycompany/app/view/MyClipView;->l:Lcom/mycompany/app/view/MyClipView$MyClipListener;

    .line 48
    .line 49
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickSearch;->x:Lcom/mycompany/app/view/MyClipView;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/mycompany/app/view/MyClipView;->c()V

    .line 52
    .line 53
    .line 54
    :goto_0
    new-instance v1, Lcom/mycompany/app/quick/QuickSearch$4$1;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/mycompany/app/quick/QuickSearch$4$1;-><init>(Lcom/mycompany/app/quick/QuickSearch$4;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 60
    .line 61
    .line 62
    return-void
.end method
