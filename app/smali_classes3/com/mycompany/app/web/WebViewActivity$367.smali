.class Lcom/mycompany/app/web/WebViewActivity$367;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogSetDown$SetDownListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/web/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/web/WebViewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$367;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$367;->a:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->hl:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->il:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->jl:Ljava/lang/String;

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->hl:Ljava/lang/String;

    .line 11
    .line 12
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->il:Ljava/lang/String;

    .line 13
    .line 14
    iput-object p1, v0, Lcom/mycompany/app/web/WebViewActivity;->jl:Ljava/lang/String;

    .line 15
    .line 16
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 17
    .line 18
    move-object v1, p2

    .line 19
    move-object v2, p3

    .line 20
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    iput-boolean p1, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 25
    .line 26
    return-void
.end method
