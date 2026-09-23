.class Lcom/mycompany/app/main/AddrIconAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/AddrIconAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/AddrIconAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/AddrIconAdapter$2;->c:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    instance-of v0, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    check-cast p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    const/4 v0, 0x1

    .line 16
    if-eqz p1, :cond_5

    .line 17
    .line 18
    iget-object v1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 19
    .line 20
    if-nez v1, :cond_1

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/mycompany/app/main/AddrIconAdapter$2;->c:Lcom/mycompany/app/main/AddrIconAdapter;

    .line 28
    .line 29
    invoke-virtual {v2, v1}, Lcom/mycompany/app/main/AddrIconAdapter;->v(I)Lcom/mycompany/app/main/MenuIconAdapter$MainMenuItem;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_2

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_2
    iget-boolean v1, v2, Lcom/mycompany/app/main/AddrIconAdapter;->i:Z

    .line 37
    .line 38
    if-eqz v1, :cond_4

    .line 39
    .line 40
    sget-boolean v1, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 41
    .line 42
    const/4 v3, 0x0

    .line 43
    if-eqz v1, :cond_3

    .line 44
    .line 45
    sput-boolean v3, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 46
    .line 47
    iget-object v1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v4, "mNotiAddr"

    .line 54
    .line 55
    sget-boolean v5, Lcom/mycompany/app/pref/PrefZone;->m0:Z

    .line 56
    .line 57
    const/16 v6, 0xf

    .line 58
    .line 59
    invoke-static {v6, v1, v4, v5}, Lcom/mycompany/app/pref/PrefSet;->d(ILandroid/content/Context;Ljava/lang/String;Z)V

    .line 60
    .line 61
    .line 62
    :cond_3
    iget-object v1, p1, Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;->u:Lcom/mycompany/app/view/MyIconView;

    .line 63
    .line 64
    invoke-virtual {v1, v3, v0}, Lcom/mycompany/app/view/MyIconView;->x(ZZ)Z

    .line 65
    .line 66
    .line 67
    :cond_4
    iget-object v1, v2, Lcom/mycompany/app/main/AddrIconAdapter;->f:Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;

    .line 68
    .line 69
    if-eqz v1, :cond_5

    .line 70
    .line 71
    invoke-interface {v1, p1}, Lcom/mycompany/app/main/AddrIconAdapter$AddrListener;->b(Lcom/mycompany/app/main/AddrIconAdapter$AddrHolder;)V

    .line 72
    .line 73
    .line 74
    :cond_5
    :goto_1
    return v0
.end method
