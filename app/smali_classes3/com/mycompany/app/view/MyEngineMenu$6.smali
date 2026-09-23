.class Lcom/mycompany/app/view/MyEngineMenu$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MyLinkView$MainLinkListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/view/MyEngineMenu;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyEngineMenu;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$6;->a:Lcom/mycompany/app/view/MyEngineMenu;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;I)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/view/MyEngineMenu$6;->a:Lcom/mycompany/app/view/MyEngineMenu;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/16 v1, 0xa

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    if-ge p2, v1, :cond_1

    .line 13
    .line 14
    invoke-interface {v0, p2, v2, v3}, Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;->b(IILjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-static {}, Lcom/mycompany/app/web/WebSearch;->a()Lcom/mycompany/app/web/WebSearch;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    add-int/lit8 v1, p2, -0x64

    .line 23
    .line 24
    int-to-long v4, v1

    .line 25
    invoke-virtual {v0, v4, v5}, Lcom/mycompany/app/web/WebSearch;->b(J)Lcom/mycompany/app/web/WebSearch$WebSchItem;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    iget-object v1, p1, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 32
    .line 33
    iget-object v2, v0, Lcom/mycompany/app/web/WebSearch$WebSchItem;->c:Ljava/lang/String;

    .line 34
    .line 35
    iget v0, v0, Lcom/mycompany/app/web/WebSearch$WebSchItem;->d:I

    .line 36
    .line 37
    invoke-interface {v1, p2, v0, v2}, Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;->b(IILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object p2, p1, Lcom/mycompany/app/view/MyEngineMenu;->g:Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;

    .line 42
    .line 43
    const/4 v0, 0x4

    .line 44
    invoke-interface {p2, v0, v2, v3}, Lcom/mycompany/app/view/MyEngineMenu$MyEngineListener;->b(IILjava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    invoke-virtual {p1}, Lcom/mycompany/app/view/MyEngineMenu;->b()V

    .line 48
    .line 49
    .line 50
    return-void
.end method
