.class Lcom/mycompany/app/quick/QuickAdapter$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/quick/QuickAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/quick/QuickAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/quick/QuickAdapter$16;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/quick/QuickAdapter$16;->c:Lcom/mycompany/app/quick/QuickAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {p1}, Lcom/mycompany/app/quick/QuickAdapter;->v(Landroid/view/View;)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    invoke-virtual {v0, p1}, Lcom/mycompany/app/quick/QuickAdapter;->H(I)Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    iget-object v1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->e:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    check-cast v0, Lcom/mycompany/app/quick/QuickSearch$7;

    .line 36
    .line 37
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/quick/QuickSearch$7;->a(ILjava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    iget-object v1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 42
    .line 43
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_3

    .line 48
    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    iget-object p1, p1, Lcom/mycompany/app/web/WebSearchAdapter$SearchItem;->f:Ljava/lang/String;

    .line 55
    .line 56
    const-string v2, " "

    .line 57
    .line 58
    invoke-static {v1, p1, v2}, Landroid/support/v4/media/a;->p(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    iget-object v0, v0, Lcom/mycompany/app/quick/QuickAdapter;->C:Lcom/mycompany/app/quick/QuickAdapter$QuickRcntListener;

    .line 63
    .line 64
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    check-cast v0, Lcom/mycompany/app/quick/QuickSearch$7;

    .line 69
    .line 70
    invoke-virtual {v0, v1, p1}, Lcom/mycompany/app/quick/QuickSearch$7;->a(ILjava/lang/String;)V

    .line 71
    .line 72
    .line 73
    :cond_3
    :goto_0
    return-void
.end method
