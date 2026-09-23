.class Lcom/mycompany/app/dialog/DialogSeekWebText$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/dialog/DialogEditorText$EditorSetListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogSeekWebText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSeekWebText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$20;->a:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/dialog/DialogSeekWebText$20;->a:Lcom/mycompany/app/dialog/DialogSeekWebText;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->o0:Lcom/mycompany/app/view/MyButtonView;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lcom/mycompany/app/pref/PrefEditor;->s:I

    .line 9
    .line 10
    sget v1, Lcom/mycompany/app/pref/PrefEditor;->r:I

    .line 11
    .line 12
    invoke-static {v0, v1}, Lcom/mycompany/app/pref/PrefEditor;->r(II)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    invoke-virtual {p2, v0}, Lcom/mycompany/app/view/MyButtonView;->setBgNorColor(I)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p1, Lcom/mycompany/app/dialog/DialogSeekWebText;->F0:Lcom/mycompany/app/wview/WebFltView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/mycompany/app/wview/WebFltView;->q()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
