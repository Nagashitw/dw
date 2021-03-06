create or replace view xmldishes_view as 

select dish_id, dish_name, dish_type, dish_image
from xmldishes,
xmltable('/item' passing object_value
columns
dish_id number(5) path 'dish_id',
dish_name varchar2(2000) path 'dish_name',
dish_type varchar2(2000) path 'dish_type',
dish_image varchar2(2000) path 'dish_image');

select * from xmldishes_view;

SELECT extract(OBJECT_VALUE, '/') "REFERENCE"
  FROM xmldishes
  WHERE existsNode(OBJECT_VALUE, '/DISH_TYPE="Carne"')
        = 1;

create table xmldishes of xmltype
xmltype store as securefile binary xml;

/
INSERT INTO XMLDISHES values(xmltype ('<xml>
<item>
<DISH_ID>1</DISH_ID>
<DISH_NAME>Bacalhau a Bras</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>bacalhau_bras.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>2</DISH_ID>
<DISH_NAME>Cozido a Potuguesa</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>cozido.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>3</DISH_ID>
<DISH_NAME>Sardinha Assada com Batata Cozida e Pimentos</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>sardinha.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>4</DISH_ID>
<DISH_NAME>Creme de Legumes</DISH_NAME>
<DISH_TYPE>Sopa</DISH_TYPE>
<DISH_IMAGE>creme_legumes.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>5</DISH_ID>
<DISH_NAME>Bitoque</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>bitoque.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>6</DISH_ID>
<DISH_NAME>CheeseCake</DISH_NAME>
<DISH_TYPE>Sobremesa</DISH_TYPE>
<DISH_IMAGE>chesse.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>7</DISH_ID>
<DISH_NAME>Caldo Verde</DISH_NAME>
<DISH_TYPE>Sopa</DISH_TYPE>
<DISH_IMAGE>caldo_verde.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>8</DISH_ID>
<DISH_NAME>Mousse de Chocolate</DISH_NAME>
<DISH_TYPE>Sobremesa</DISH_TYPE>
<DISH_IMAGE>mousse.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>9</DISH_ID>
<DISH_NAME>Pao e Azeitonas</DISH_NAME>
<DISH_TYPE>Entrada</DISH_TYPE>
<DISH_IMAGE>azeitonas.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>10</DISH_ID>
<DISH_NAME>Vinho Tinto</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>tinto.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>11</DISH_ID>
<DISH_NAME>Tabuleiro de Queijos</DISH_NAME>
<DISH_TYPE>Entrada</DISH_TYPE>
<DISH_IMAGE>queijos.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>12</DISH_ID>
<DISH_NAME>Vinho Branco</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>branco.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>13</DISH_ID>
<DISH_NAME>Agua</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>agua.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>14</DISH_ID>
<DISH_NAME>Sumo de Laranja</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>sumo.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>15</DISH_ID>
<DISH_NAME>Cafe</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>cafe.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>16</DISH_ID>
<DISH_NAME>Morangos</DISH_NAME>
<DISH_TYPE>Fruta</DISH_TYPE>
<DISH_IMAGE>morango.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>17</DISH_ID>
<DISH_NAME>Hambuger com carne e salada</DISH_NAME>
<DISH_TYPE>Fast-Food</DISH_TYPE>
<DISH_IMAGE>fast.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>18</DISH_ID>
<DISH_NAME>Francesinha</DISH_NAME>
<DISH_TYPE>Fast-Food</DISH_TYPE>
<DISH_IMAGE>francesinha.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>19</DISH_ID>
<DISH_NAME>Grelhada Mista</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>mista.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>20</DISH_ID>
<DISH_NAME>Martini</DISH_NAME>
<DISH_TYPE>Aperitivo</DISH_TYPE>
<DISH_IMAGE>drink.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>21</DISH_ID>
<DISH_NAME>Banana</DISH_NAME>
<DISH_TYPE>Fruta</DISH_TYPE>
<DISH_IMAGE>banana.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>22</DISH_ID>
<DISH_NAME>Salada Mista</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>salada_mista.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>23</DISH_ID>
<DISH_NAME>Salada de Fruta</DISH_NAME>
<DISH_TYPE>Sobremesa</DISH_TYPE>
<DISH_IMAGE>salada_fruta.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>24</DISH_ID>
<DISH_NAME>Cafe com Maceira</DISH_NAME>
<DISH_TYPE>Bebida</DISH_TYPE>
<DISH_IMAGE>bagacu.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>25</DISH_ID>
<DISH_NAME>Salada de Alface</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>alface.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>26</DISH_ID>
<DISH_NAME>Salada de Cenoura</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>cenoura.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>27</DISH_ID>
<DISH_NAME>Salada de Tomate</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>tomate.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>28</DISH_ID>
<DISH_NAME>Salada de Tomate e Alface</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>al_to.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>29</DISH_ID>
<DISH_NAME>Salada de Pepino</DISH_NAME>
<DISH_TYPE>Salada</DISH_TYPE>
<DISH_IMAGE>pepino.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>30</DISH_ID>
<DISH_NAME>Bola de Gelado</DISH_NAME>
<DISH_TYPE>Sobremesa</DISH_TYPE>
<DISH_IMAGE>gelado.png</DISH_IMAGE>
</item>
<item>
<DISH_ID>31</DISH_ID>
<DISH_NAME>Carbonara</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>carbonara.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>32</DISH_ID>
<DISH_NAME>Peixe com batata cozida</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>ovo.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>33</DISH_ID>
<DISH_NAME>Legumes Saltiados</DISH_NAME>
<DISH_TYPE>Vegetariano</DISH_TYPE>
<DISH_IMAGE>legumes.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>34</DISH_ID>
<DISH_NAME>Legumes Cozidos</DISH_NAME>
<DISH_TYPE>Vegetariano</DISH_TYPE>
<DISH_IMAGE>leg_cozidos.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>35</DISH_ID>
<DISH_NAME>Feijoada</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>feijoada.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>36</DISH_ID>
<DISH_NAME>Rancho</DISH_NAME>
<DISH_TYPE>Carne</DISH_TYPE>
<DISH_IMAGE>rancho.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>37</DISH_ID>
<DISH_NAME>Bacalhau a Gomes de Sa</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>bacalhau_gomes.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>38</DISH_ID>
<DISH_NAME>Bacalhau com Broa</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>bacalhau_broa.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>39</DISH_ID>
<DISH_NAME>Salmao Grelhado com batata cozida</DISH_NAME>
<DISH_TYPE>Peixe</DISH_TYPE>
<DISH_IMAGE>salmao.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>40</DISH_ID>
<DISH_NAME>Maca</DISH_NAME>
<DISH_TYPE>Fruta</DISH_TYPE>
<DISH_IMAGE>maca.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>41</DISH_ID>
<DISH_NAME>Laranja</DISH_NAME>
<DISH_TYPE>Fruta</DISH_TYPE>
<DISH_IMAGE>laranja.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>42</DISH_ID>
<DISH_NAME>Vinho do Porto</DISH_NAME>
<DISH_TYPE>Aperitivo</DISH_TYPE>
<DISH_IMAGE>orto.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>43</DISH_ID>
<DISH_NAME>Favaios</DISH_NAME>
<DISH_TYPE>Aperitivo</DISH_TYPE>
<DISH_IMAGE>favaios.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>44</DISH_ID>
<DISH_NAME>Ricard</DISH_NAME>
<DISH_TYPE>Aperitivo</DISH_TYPE>
<DISH_IMAGE>ricard.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>45</DISH_ID>
<DISH_NAME>Canja</DISH_NAME>
<DISH_TYPE>Sopa</DISH_TYPE>
<DISH_IMAGE>canja.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>46</DISH_ID>
<DISH_NAME>Sopa da Pedra</DISH_NAME>
<DISH_TYPE>Sopa</DISH_TYPE>
<DISH_IMAGE>pedra.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>47</DISH_ID>
<DISH_NAME>Pate</DISH_NAME>
<DISH_TYPE>Entrada</DISH_TYPE>
<DISH_IMAGE>pate.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>48</DISH_ID>
<DISH_NAME>Camarao</DISH_NAME>
<DISH_TYPE>Entrada</DISH_TYPE>
<DISH_IMAGE>camarao.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>49</DISH_ID>
<DISH_NAME>Pizza</DISH_NAME>
<DISH_TYPE>Fast-Food</DISH_TYPE>
<DISH_IMAGE>pizza.jpg</DISH_IMAGE>
</item>
<item>
<DISH_ID>50</DISH_ID>
<DISH_NAME>Cachorro</DISH_NAME>
<DISH_TYPE>Fast-Food</DISH_TYPE>
<DISH_IMAGE>cachorro.jpg</DISH_IMAGE>
</item>
</xml>'));

select * from xmldishes;

