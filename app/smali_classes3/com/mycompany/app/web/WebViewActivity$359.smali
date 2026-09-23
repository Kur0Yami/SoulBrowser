.class Lcom/mycompany/app/web/WebViewActivity$359;
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
    iput-object p1, p0, Lcom/mycompany/app/web/WebViewActivity$359;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/web/WebViewActivity$359;->c:Lcom/mycompany/app/web/WebViewActivity;

    .line 2
    .line 3
    iget-object v3, v0, Lcom/mycompany/app/web/WebViewActivity;->Dk:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v5, v0, Lcom/mycompany/app/web/WebViewActivity;->Ek:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v6, v0, Lcom/mycompany/app/web/WebViewActivity;->Fk:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Dk:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Ek:Ljava/lang/String;

    .line 13
    .line 14
    iput-object v1, v0, Lcom/mycompany/app/web/WebViewActivity;->Fk:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v1, Lcom/mycompany/app/pref/PrefAlbum;->H:Ljava/lang/String;

    .line 17
    .line 18
    sget-object v2, Lcom/mycompany/app/pref/PrefAlbum;->I:Ljava/lang/String;

    .line 19
    .line 20
    iget-object v4, v0, Lcom/mycompany/app/web/WebViewActivity;->A8:Ljava/lang/String;

    .line 21
    .line 22
    invoke-static/range {v0 .. v6}, Lcom/mycompany/app/main/MainUtil;->G4(Lcom/mycompany/app/main/MainActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    iput-boolean v1, v0, Lcom/mycompany/app/web/WebViewActivity;->B9:Z

    .line 27
    .line 28
    return-void
.end method
