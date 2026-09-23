.class Lcom/mycompany/app/web/WebViewActivity$168;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$168;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    sget-boolean v0, Lcom/mycompany/app/pref/PrefWeb;->t:Z

    .line 2
    .line 3
    sget-boolean v1, Lcom/mycompany/app/pref/PrefWeb;->u:Z

    .line 4
    .line 5
    sget v2, Lcom/mycompany/app/web/WebViewActivity;->Fo:I

    .line 6
    .line 7
    iget-object v2, p0, Lcom/mycompany/app/web/WebViewActivity$168;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 8
    .line 9
    invoke-virtual {v2, v0, v1}, Lcom/mycompany/app/web/WebViewActivity;->r7(ZZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
