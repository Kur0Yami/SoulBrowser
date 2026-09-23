.class public final synthetic Lkotlin/time/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lkotlin/time/b;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/b;->c:I

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    packed-switch v0, :pswitch_data_0

    invoke-static {p1}, Lkotlin/time/InstantKt;->d(C)Z

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p1}, Lkotlin/time/InstantKt;->f(C)Z

    move-result p1

    goto :goto_0

    :pswitch_1
    invoke-static {p1}, Lkotlin/time/InstantKt;->a(C)Z

    move-result p1

    goto :goto_0

    :pswitch_2
    invoke-static {p1}, Lkotlin/time/InstantKt;->c(C)Z

    move-result p1

    goto :goto_0

    :pswitch_3
    invoke-static {p1}, Lkotlin/time/InstantKt;->e(C)Z

    move-result p1

    goto :goto_0

    :pswitch_4
    invoke-static {p1}, Lkotlin/time/InstantKt;->b(C)Z

    move-result p1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
